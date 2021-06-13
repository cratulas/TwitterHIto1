class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :content , null: false
      t.bigint :retweets
      t.references :user, foreign_key: true

      t.timestamps

      t.index [:user_id, :created_at]
    end
  end
end

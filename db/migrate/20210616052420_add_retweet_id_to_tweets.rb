class AddRetweetIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :retweet_id, :int , default: 0
  end
end

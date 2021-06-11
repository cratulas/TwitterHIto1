class AddProfilePictureToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :url_picture, :string
  end
end

class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nick_name, :string
    add_column :users, :profile_picture, :string
  end
end

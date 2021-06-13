class User < ApplicationRecord
  paginates_per 50
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets , dependent: :destroy
  has_many :likes, class_name: "likes", dependent: :destroy
  
end

class User < ApplicationRecord
  paginates_per 50
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets , dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :friends, dependent: :destroy
  
<<<<<<< HEAD
  

  rails_admin do
    configure :tweets do
      # configuration here
    end
  end
=======
  def to_s
    email
  end
  
>>>>>>> master
end

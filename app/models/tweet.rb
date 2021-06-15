class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes , dependent: :destroy
    validates :content, presence: true
    paginates_per 10
      
    def picture
      a = self.user_id
      b = User.find(a)
      c = b.profile_picture
    end

    def cantidad
      self.likes.count
    end

end

class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes , dependent: :destroy
    validates :content, presence: true
    
    def picture
      a = self.user_id
      b = User.find(a)
      c = b.profile_picture
    end
end

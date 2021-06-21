class Friend < ApplicationRecord
  belongs_to :user

  scope :friends_for_me, -> (user_id){ where("user_id = ?", user_id) }
end


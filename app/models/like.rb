class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  def user
    a = self.user_id
    user = User.find(a)
  end
end

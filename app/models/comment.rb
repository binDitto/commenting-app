class Comment < ApplicationRecord
  validates :user, presence: true, length: { minimum: 3, maximum: 25 }
  validates :description, presence:true, length: { minimum: 6, maximum: 200 }

end

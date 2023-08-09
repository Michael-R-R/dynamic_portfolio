class Post < ApplicationRecord
  validates(:title, presence: true, length: { maximum: 255 })
  validates(:thumbnail, presence: true, length: { maximum: 255 })

  belongs_to(:user)
end

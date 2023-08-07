class Post < ApplicationRecord
  validates(:type_tag, presence: true, length: { maximum: 255 })
  validates(:title, presence: true, length: { maximum: 255 })
  validates(:thumbnail, presence: true, length: { maximum: 255 })

  belongs_to(:user)
end

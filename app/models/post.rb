class Post < ApplicationRecord
  has_rich_text(:content)

  validates(:title, presence: true, length: { maximum: 255 })
  validates(:thumbnail, presence: true, length: { maximum: 255 })
  validates(:type, presence: true)
  validates(:user_id, presence: true)

  belongs_to(:user)
end

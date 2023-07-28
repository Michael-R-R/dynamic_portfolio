class Permission < ApplicationRecord

  validates(:create, presence: true)
  validates(:edit, presence: true)
  validates(:remove, presence: true)
  validates(:user_id, presence: true)

  belongs_to :user

end

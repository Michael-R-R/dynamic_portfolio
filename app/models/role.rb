class Role < ApplicationRecord

  validates(:role_name, presence: true)
  validates(:user_id, presence: true)

  before_save { !role_name.downcase }

  belongs_to(:user)

end

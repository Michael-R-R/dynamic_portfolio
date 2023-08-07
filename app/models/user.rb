class User < ApplicationRecord

  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates(:first_name, presence: true)
  validates(:last_name, presence: true)
  validates(:username,
            presence: true,
            uniqueness: true,
            length: { minimum: 6 })
  validates(:email,
            presence: true,
            uniqueness: true,
            format: { with: VALID_EMAIL_REGEX },
            length: { maximum: 255 })
  validates(:password,
            presence: true,
            length: { minimum: 6 })

  has_secure_password

  before_save { !username.downcase; !email.downcase }

  has_one(:role)
  has_one(:permission)
  has_many(:post)

end

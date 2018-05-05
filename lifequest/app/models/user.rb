class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 18 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 52 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  before_save { self.email = email.downcase }
  validates :str, numericality: { only_integer: true, greater_than: 0 }
  validates :end, numericality: { only_integer: true, greater_than: 0 }
  validates :agl, numericality: { only_integer: true, greater_than: 0 }
  validates :wis, numericality: { only_integer: true, greater_than: 0 }
  validates :dsc, numericality: { only_integer: true, greater_than: 0 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end

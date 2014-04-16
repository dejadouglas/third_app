class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, presence: true, length: { maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.1]+\.[a-z]+\z/i
  validates :email, presence: true
end

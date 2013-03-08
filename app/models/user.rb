class User
	include Mongoid::Document
	embeds_one :wall
  include ActiveModel::SecurePassword
  field :username, type: String
  field :password_digest, type: String
  has_secure_password
  validates_uniqueness_of :username
end

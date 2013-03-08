class User
	embeds_one :wall
  include ActiveModel::SecurePassword
  include Mongoid::Document
  field :username, type: String
  field :password_digest, type: String
  has_secure_password
  validates_uniqueness_of :username
end

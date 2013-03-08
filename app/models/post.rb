class Post
  include Mongoid::Document
  field :title, type: String
  field :message, type: String
	validates_presence_of :title, :message
end

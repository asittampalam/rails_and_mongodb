class Post
  include Mongoid::Document
  field :title, type: String
  field :message, type: String
end

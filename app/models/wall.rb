class Wall
  include Mongoid::Document
	embedded_in user
end

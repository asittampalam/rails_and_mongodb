class PostsController < ApplicationController


	def create
		@post= Post.create(params[])
	end
end
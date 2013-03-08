class WallsController < ApplicationController
  def show
		@this_wall= User.find(params[:user_id]).wall
  	if(@this_wall.nil?)

		end
	end
end

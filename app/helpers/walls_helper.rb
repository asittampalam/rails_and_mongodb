module WallsHelper
	def build_post_for_wall(wall)
			wall.posts.build()
	end
end

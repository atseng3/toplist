class ApiController < ApplicationController
	def approve
		# request to this action will attempt to like a post for the current user
		respond_to do |format|
      # format.html { redirect_to posts_url }
      format.json { render json: approve_params['post_id'] }
    end
		@post = Post.find(approve_params['post_id'])
		@post.liked_by current_user
	end

	private

		def approve_params
			params.require(:approve).permit(:post_id)
		end
end

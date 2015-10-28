class ApiController < ApplicationController
	def approve
		# request to this action will attempt to like a post for the current user
		@post = Post.find(approve_params['post_id'])
		@post.liked_by current_user

		respond_to do |format|
      format.json { render json: @post.votes_for.count }
    end
	end

	private

		def approve_params
			params.require(:approve).permit(:post_id)
		end
end

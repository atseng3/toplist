class CommentsController < ApplicationController
	def new

	end

	def create
		# @comment = Comment.new(comment_params)
    params = comment_params
    @post = Post.find(params['post_id'])
    @comment = @post.comments.new
    @comment.user_id = current_user.id
    @comment.comment = params['comment']
    respond_to do |format|
    	if @comment.save
    		# comment was successfully saved
    		format.html { redirect_to @post, notice: 'comment was successfully created.' }
	    else
	    	# error, there was a error!!
        format.html { redirect_to @post, notice: @comment.errors }
	    end
    end
    


    # # @comment.product_id = @product.id
    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @product, notice: 'comment was successfully created.' }
    #     # format.json { render action: 'show', status: :created, location: @comment }
    #   else
    #     format.html { redirect_to @product, notice: @comment.errors }
    #     # format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
	end

	def update

	end

	def edit

	end

	def destroy

	end

	private
		def comment_params
			params.require(:comment).permit(:comment, :post_id)
		end
end

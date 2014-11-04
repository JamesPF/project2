class PostController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def new_post

		@post = Post.new(post_params)

		if @post.save
			redirect_to post_path
		else
			redirect_to @post, notice: 'There was an error creating the new post.'
		end

	end

	def post_params
			params.require(:post).permit(:date, :title, :body)
	end

end
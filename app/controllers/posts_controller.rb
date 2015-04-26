class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_url
		else
			render :new
    end
  end

    # render :text => "Saving a picture. Title: #{params[:title]}, Author: #{params[:author]}, url: #{params[:url]}, content: #{params[:content]}"


  private
  def post_params
  	params.require(:post).permit(:title, :author, :url, :content)
  end



end



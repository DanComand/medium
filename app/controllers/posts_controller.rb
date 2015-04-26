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
    

    # render :text => "Saving a picture. Title: #{params[:title]}, Author: #{params[:author]}, url: #{params[:url]}, content: #{params[:content]}"
  end
end



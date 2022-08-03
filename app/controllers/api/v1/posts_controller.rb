class Api::V1::PostsController < ApplicationController
    def index
        @posts = Post.all
        render json: @posts
    end
    
    def show
        @user = User.find(params[:user_id])
        @post = Post.find(params[:id])
        render json: @posts
    end
       
    def create
        @post = current_user.posts.new(post_params)
        @post.likes_counter = 0
        @post.comments_counter = 0
    
        if @post.save
          render json: @post, status: :created
        else
          flash[:alert] = 'Adding a new post failed.'
          render :new, status: :unprocessable_entity
        end
    end
    
    def destroy
        post = Post.find(params[:id])
        user = User.find(post.author_id)
        user.posts_counter -= 1
        post.destroy
        user.save

    if @post.destroy   
        render json: { message: 'Post deleted' }
    else 
        render json: { message: 'An error occured, plese try again' }, status: :unprocessable_entity
    end

      private
    
      def post_params
        params.require(:post).permit(:title, :text, :author_id ).tap do |post_params|
          post_params.require(:text)
        end
      end
    end
end

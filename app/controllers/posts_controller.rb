class PostsController < ApplicationController
  def index
    @posts = Post.all
    @current_time = Time.now
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = 'post_success！'
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:nickname, :title, :body, :count_down_to)
  end
end


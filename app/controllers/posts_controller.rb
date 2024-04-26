class PostsController < ApplicationController
  before_action :authenticate_user!, :require_login, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

  def require_login
    if user_signed_in?
      # allow
    else
      # render or redirect to abort
      redirect_to posts_path
    end
  end
end

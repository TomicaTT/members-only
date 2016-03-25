class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to root_path
  end

  # before filter
  def signed_in_user
    unless signed_in?
      redirect_to login_url
    end
  end
end

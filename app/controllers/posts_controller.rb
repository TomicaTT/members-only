class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :create]

  def new
    @post = Post.new
  end

  # before filter
  def signed_in_user
    unless signed_in?
      redirect_to login_url
    end
  end
end

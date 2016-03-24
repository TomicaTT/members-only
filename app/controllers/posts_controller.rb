class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :create]
end

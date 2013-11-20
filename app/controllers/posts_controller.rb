class PostsController < ApplicationController
  expose(:post)

  def index
    render json: 'test'
  end

  def show
    respond_with post
  end

end

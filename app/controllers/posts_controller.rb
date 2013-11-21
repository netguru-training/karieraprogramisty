class PostsController < ApplicationController
  expose(:post, attributes: :post_params)
  expose(:posts)

  def index
    respond_with posts
  end

  def create
    post.user = @current_user
    post.save
    respond_with post
  end

  def show
    respond_with post
  end

  protected

  def post_params
    params.require(:post).permit(:content)
  end

end

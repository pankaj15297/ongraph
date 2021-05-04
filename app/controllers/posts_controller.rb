class PostsController < ApplicationController
  before_action :check

  def index
    
  end
  def new
    @post = Post.new
  end

  def create
    user = User.find_by(id: current_user.id)
    @post = user.posts.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    
  end
  private
  def post_params
    params.require(:post).permit(:title, :text, :image)
  end
end

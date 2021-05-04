class HomeController < ApplicationController
  def index
    if current_user.present?
      user = User.find_by(id: current_user.id)
      @post = user.posts
    end
  end

  def create
    
  end
end

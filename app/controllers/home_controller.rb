class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = Post.all.to_a.sort! { |a, b| b.updated_at <=> a.updated_at }
    @nsbe_post = Post.new
  end

end

class PostsController < ApplicationController
  def posts
    @community = Community.find[params[:id]]
    @post = Post.new
  end

  def index
    @posts = Post.all
    @community = Community.find(params[:community_id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # we need `community_id` to associate post with corresponding community
    @community = Community.find(params[:restaurant_id])
    @post.community = @community
    @post.save
    redirect_to restaurant_path(@community)
  end

  def find_community
    @community = Community.find[params[:id]]
  end
end

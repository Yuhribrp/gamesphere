class PostsController < ApplicationController
  def posts
    @community = Community.find[params[:community_id]]
    @post = Post.new
  end

  def index
    @posts = Post.all.order(created_at: :desc)
    @community = Community.find(params[:community_id])
    @post = Post.new
  end

  def create
    @community = Community.find(params[:community_id])
    @post = Post.new(post_params)
    # we need `community_id` to associate post with corresponding community
    @post.community = @community
    @post.save
    redirect_to :action => "index", :id => @community
  end

  def find_community
    @community = Community.find[params[:id]]
  end

  def destroy
    @post.destroy
    redirect_to :action => "index", :id => @community
  end

  private

  def post_params
    params.require(:post).permit(:content, :photo, :video)
  end
end

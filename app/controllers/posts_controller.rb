class PostsController < ApplicationController
  def posts
    @community = Community.find[params[:community_id]]
    @post = Post.new
  end

  def index
    @community = Community.find(params[:community_id])
    @posts = Post.where(community: @community).order(created_at: :desc)
    @post = Post.new
  end

  def create
    @community = Community.find(params[:community_id])
    @post = Post.new(post_params)
    # we need `community_id` to associate post with corresponding community
    @post.community = @community
    @post.user = current_user
    @post.save
    redirect_to :action => "index", :id => @community
  end

  def find_community
    @community = Community.find[params[:id]]
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to community_posts_path(@post.community)
  end

  def match
    if @player_one != @player_two
      @player_two
    else
      # no matches today
      redirect matches_path
    end
  end

    private

  def post_params
    params.require(:post).permit(:content, :photo, :video)
  end
end

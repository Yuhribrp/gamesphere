class CommunitiesController < ApplicationController
  # def posts
  #   @community = Community.find[params[:id]]
  #   @post = Post.new
  # end

  def find_community
    @community = Community.find[params[:id]]
  end
end

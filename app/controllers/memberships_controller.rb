class MembershipsController < ApplicationController
  before_action :authenticate_user!


  def join
    @community = Community.find(params[:community_id])
    @member = current_user
    @membership = Membership.new(user: @member, community: @community)
    if @membership.save
      redirect_to community_posts_path(@community)
      flash[:notice] = "Welcome to '#{@community.title}' Community"
    else
      redirect_to community_posts_path(@community)
      flash[:notice] = "Not Able to Join"
    end    
  end

  # def create
  #   @membership = current_user.memberships.build(params[:community_id])
  #   if @membership.save
  #     flash[:notice] = "Welcome to '#{community.title}' Community"
  #     redirect_to :back
  #   else
  #     flash[:error] = "Not Able to join."
  #     redirect_to :back
  #   end
  # end

  def destroy
    @membership = current_user.memberships.find(params[:id])
    @membership.destroy
    flash[:notice] = "You Leave '#{@community.title}' Community!"
      redirect_to :back   
  end
end

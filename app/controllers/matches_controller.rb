class MatchesController < ApplicationController
  def index
    @player_one = current_user
    @player_two = User.where(age: current_user.age, language: current_user.language, location: current_user.location).sample
  end

  def create
    @community = Community.find(params[:community_id])
    @player_one = current_user
    @player_two = User.where(age: current_user.age, language: current_user.language, location: current_user.location).sample
    if @player_one != @player_two
      @match = Match.new(user_one_id: @player_one.id, user_two_id: @player_two.id)
      @match.save
      redirect_to community_matches_path(@community)
    else
      flash[:alert] = "erro"
    end
  end
end

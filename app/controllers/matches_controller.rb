class MatchesController < ApplicationController
  def index
    @player_one = current_user
    @player_two = User.where(age: current_user.age, language: current_user.language, location: current_user.location).sample
    @matches = Match.where(user_one_id: current_user.id) || Match.where(user_two_id: current_user.id)
  end

  def create
    @community = Community.find(params[:community_id])
    @player_one = current_user
    @player_two = User.where(age: current_user.age, language: current_user.language, location: current_user.location).sample
    @combination = [@player_one, @player_two].combination(2).to_a
    @matches = Match.where(user_one_id: current_user.id) || Match.where(user_two_id: current_user.id)


    if @matches == [ ]
      @match = Match.new(user_one_id: @player_one.id, user_two_id: @player_two.id)

      @match.save
      redirect_to community_matches_path(@community)
    else
      if @player_one != @player_two && @matches.include?(@combination)
        @match = Match.new(user_one_id: @player_one.id, user_two_id: @player_two.id)
        @match.save
        redirect_to community_matches_path(@community)
      else
        redirect_to community_matches_path(@community)
        flash[:alert] = "No new matches for now!"
      end
    end
  end
end

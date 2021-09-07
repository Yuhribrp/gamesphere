class MatchesController < ApplicationController

  def index
    @player_one = current_user
    @player_two = User.where(age: current_user.age, language: current_user.language, location: current_user.location).sample
    # if @player_one != @player_two
    #   @player_two
    # else
    #   # no matches today
    #   redirect_to :action => "index", :id => @community
    # end
  end

  def create
    if @player_one != @player_two
      @match = Match.find(params[:match_id])
      @match = Match.new(@player_one[:id], @player_two[:id])
      if @match.save
        puts "ahhhhhhhh"
      end
    else
      redirect_to communities_path
    end
  end
end

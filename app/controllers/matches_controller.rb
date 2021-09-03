class MatchesController < ApplicationController
  def find_users
    @player_one = [current_user.age, current_user.location, current_user.language]
    @player_two = User.where(params[age: current_user.age, location: current_user.location, language: current_user.language])
    @player_two = player_two.sample
  end

  def match
    if @player_one != @player_two
      @player_two
    else
      redirect matches_path
    end
  end

  def index
  end
end

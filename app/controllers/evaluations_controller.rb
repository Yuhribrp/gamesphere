class EvaluationsController < ApplicationController

  def show
    @player_one = current_user
  end

  def create
    if @player_one != @player_two
      @evaluation = Evaluation.find(params[:evaluation_id])
      @evaluation = Evaluation.new(@player_one[:id])
      if @evaluation.save
        puts "ahhhhhhhh"
      end
    else
      redirect_to communities_path
    end
  end
end

end

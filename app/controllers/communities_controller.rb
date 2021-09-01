class CommunitiesController < ApplicationController

  def show
    @communities = Community.all
  end
end

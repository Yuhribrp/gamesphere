class CommunitiesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def index
    
    # @search = params["search"]
    # if @search.present?
    #   @title = @search["title"]
    #   @communities = Community.where(title: @title)
    # end
    if params[:query].present?
      @communities = Community.search_by_title(params[:query])
    else
      @communities = Community.all
    end
  end
end

class SearchController < ApplicationController
  include SearchHelper
  
  def index
    @results = search(params[:search_form])
  end
  
end

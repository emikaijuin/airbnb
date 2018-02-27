class SearchController < ApplicationController
  include SearchHelper
  
  def index
    @results = PgSearch.multisearch(params[:search_form])
  end
  
end

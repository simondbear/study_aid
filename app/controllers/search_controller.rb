class SearchController < ApplicationController

  def search_results
    @search_results = params[:search]
    if @search_results
      @results = Subject.where('name LIKE ?', "%#{params[:search]}%")
    end
  end

end
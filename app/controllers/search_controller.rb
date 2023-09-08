class SearchController < ApplicationController
  def index
    @facade = BendersFacade.new
  end
end
class SearchController < ApplicationController
  def index
    @facade = BendersFacade.new#this is not allowing me to view my site on localhost for some reason :( 
  end
end
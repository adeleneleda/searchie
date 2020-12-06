class OmdbController < ApplicationController
  def index
    if params[:search_term]
      omdb = Omdb.new
      @movie = omdb.call(params[:search_term])
      @flag = Flag.get(@movie["Country"])
    end
  end
end
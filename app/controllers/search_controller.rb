class SearchController < ApplicationController



  def index
    @p = Product.all
  end


  def search
    require 'ransack'
    @movies = Product.ransack(name_cont: params[:q]).result(distinct: true)
    @films = Film.ransack(name_cont: params[:q]).result(distinct: true)
    # render json: {movies: []}


    respond_to do |format|
      format.html {}
      format.json {
        @movies = @movies.limit(5)
        @films = @films.limit(5)
      }
    end
  end

  def countries

  end


end
 
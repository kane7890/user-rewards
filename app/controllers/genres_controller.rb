class GenresController < ApplicationController
  # index page for listing all genres
  def index
    @genres = Genre.all
  end

  # show individual genre 
  def show
    @genre=Genre.find(params[:id])
  end

  def new
  end

  def create
  end
end

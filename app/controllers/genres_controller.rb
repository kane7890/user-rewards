class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre=Genre.find(params[:id])
  end

  def new
  end

  def create
  end
end

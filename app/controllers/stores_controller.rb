class StoresController < ApplicationController
  def index
    @stores=Store.all
  end

  def show
    @store=Store.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit

  end

  def update

  end

  private
  def store_params
    params.require(:store).permit(:name, :city, :state)
  end
end

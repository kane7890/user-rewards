class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
  end


  def new
    @purchase = Purchase.new
  end

  def create
    byebug
    @purchase = Purchase.find(params[:id])

  end

  def

end

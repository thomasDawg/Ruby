class LaptopsController < ApplicationController
  before_action :set_laptop, only: [:show]

  # GET /laptops
  # GET /laptops.json
  def index
    @laptops = Laptop.all
  end
  # GET /laptops/1
  # GET /laptops/1.json
  def show
  end
  # GET /laptops/new

#Funker det nå??
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_laptop
    @laptop = Laptop.find(params[:id])
  end


end

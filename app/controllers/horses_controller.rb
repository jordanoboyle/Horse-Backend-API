class HorsesController < ApplicationController

  def index
    @horses = Horse.all
    render template: "horses/index"
  end
  
  def show
    @horse = Horse.find_by(id: params[:id])
    render template: "horses/show"
  end
  
  def create
    @horse = Horse.new(
      breed: params[:breed],
      color: params[:color],
      build: params[:build],
      price: params[:price],
      image_url: params[:image_url],
    )   
    if @horse.save
      render json: {confirmation: "Horse Info Saved"}
    else
      render json: {ERROR: @horse.errors.full_messages }
    end
  end
  
  def update
    render json: {message: "hello there"}
    
  end
  
  def destroy
    render json: {message: "hello there"}

  end
end

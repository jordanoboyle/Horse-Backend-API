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
      render template: "horses/show"
    else
      render json: {ERROR: @horse.errors.full_messages }
    end
  end
  
  def update
    @horse = Horse.find_by(id: params[:id])
    @horse.breed = params[:breed] || @horse.breed
    @horse.color = params[:color] || @horse.color
    @horse.build = params[:build] || @horse.build
    @horse.price = params[:price] || @horse.price
    @horse.image_url = params[:image_url] || @horse.image_url

    #happy sad
    if @horse.save
      render template: "horses/show"
    else
      render json: {message: @horse.errors.full_messages}
    end

    
  end
  
  def destroy
    render json: {message: "hello there"}

  end
end

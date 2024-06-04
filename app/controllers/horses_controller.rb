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
      build: "pony",
      color: "white, brown spots",
      breed: "Mustang",
      price: 25000,
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3GVjTmxAEFHaF-GYegK8jn0CUA06kGWrIQg&s",
    )
    
    if @horse.save
      render json: {breed: @horse.breed}
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

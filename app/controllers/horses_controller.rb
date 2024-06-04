class HorsesController < ApplicationController

  def index
    @horses = Horse.all
    render template: "horses/index"
  end
  
  def show
    @horse = Horse.find_by(id: 2)
    render json: {message: @horse.breed}
  end
  
  def create
    render json: {message: "hello there"}
    
  end
  
  def update
    render json: {message: "hello there"}
    
  end
  
  def destroy
    render json: {message: "hello there"}

  end
end

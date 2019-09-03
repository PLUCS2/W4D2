
class CatsController < ApplicationController

  def index 
    @cats = Cat.all 
    render :index 
  end 

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def create
    kit = Cat.new(cat_params)
    if kit.save
      redirect_to cat_url(kit)
    else 
      render json: kit.errors.full_messages 
    end 
  end 

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages
    end
  end

  def new 
    @cat = Cat.new 
  end 

  private 
  
  def cat_params 
    params.require(:cat).permit(:name, :color, :sex, :description, :birth_date)
  end 
end 
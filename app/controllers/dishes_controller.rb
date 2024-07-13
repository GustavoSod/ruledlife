class DishesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dish, only: %i[ show edit update destroy ]

  def index
    @dishes = current_user.dishes
  end

  def show
  end

  def new
    @dish = current_user.dishes.build
    @days = Day.all
  end

  def edit
    @days = Day.all
  end

  def create
    @dish = current_user.dishes.build(dish_params)
    @days = Day.all

    if @dish.save
      redirect_to @dish, notice: 'Dish was successfully created.'
    else
      render :new
    end
  end

  def update
    @days = Day.all
    
    if @dish.update(dish_params)
      redirect_to @dish, notice: 'Dish was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dish.destroy
    redirect_to dishes_url, notice: 'Dish was successfully destroyed.'
  end

  private
    def set_dish
      @dish = current_user.dishes.find(params[:id])
    end

    def dish_params
      params.require(:dish).permit(:title, :description, :calories, :image, :day_id)
    end
end

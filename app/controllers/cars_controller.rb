class CarsController < ApplicationController
  before_action :auth_admin, only: [:new, :create, :destory]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:make, :price, :new, dealership_ids: []) if current_user.admin?
  end

end

class CarsController < ApplicationController
  def index

  end

  def new
  end

  def auction_show
    @auction = Car.maximum(:id) + 1
  end

  def create
  end

  def browse

    @make = Car.group("make").select('make')
    @models = Car.group("model").select('model')

    # @makes = Car.all.group_by &:make
    # render json: @makes
  end

  def car_model_show

    @car = Car.where(:make => params[:make], :model => params[:model])

  end
end

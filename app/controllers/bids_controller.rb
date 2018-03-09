class BidsController < ApplicationController



  def new

  end

  def create

    last_bid = Bid.last_bid_for_car( params[:bid][:car_id] )

    if last_bid

      # If there is a previous bid for this car, check that the current bid is greater than the previous bid by at least the minimum increment.
      bid_difference = params[:bid][:amount].to_i - last_bid.amount
      if bid_difference < Bid::MIN_INCREMENT
        @error = "below increment of #{Bid::MIN_INCREMENT}"
        render :create and return
      end

    else
      # If this is the first bid for this car, check that it's larger than the opening bid set for the car.
      car = Car.find(params[:bid][:car_id])
      if params[:bid][:amount].to_i < car.opening_bid
        @error = "Below opening bid"
        render :create and return
      end

    end


    @bid = Bid.new bid_params
    @bid.user = @current_user
    if @bid.save
      @status = 'success'

    else
      @status = 'fail'
    end

  end

  private

  def bid_params
    params.require(:bid).permit(:amount, :car_id)
  end


end

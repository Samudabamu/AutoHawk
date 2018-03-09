class CarsController < ApplicationController
  def index
  end

  def new
  end

  def auction_show
    @car_auction = Car.last
    @last_bid = Bid.last_bid_for_car( @car_auction.id )

    auction_over = (@car_auction.auction_date + 10.minutes) < DateTime.now
    auction_live = (@car_auction.auction_date) < DateTime.now && DateTime.now < (@car_auction.auction_date + 10.minutes)

    # within 10 minute window
    # p auction_over
    # p @car_auction.auction_date + 10.minute
    # p  DateTime.now

    if @car_auction.bid_status == "upcoming" && auction_live
      @car_auction.update bid_status: "live"
    elsif @car_auction.bid_status == "live" && auction_over
      if @car_auction.bids.length > 0
        @car_auction.update bid_status: "sold"
        puts "sold"
      else
        @car_auction.update bid_status: "failed"
        puts "failed"
      end
    end


    render :show
  end

  def create
  end

  def browse
    @make = Car.group("make").select('make')
    @models = Car.group("model").select('model')
  end

  def car_model_show
    @car = Car.where(:make => params[:make], :model => params[:model])
  end
end

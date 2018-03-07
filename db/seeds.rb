User.destroy_all

User.create username: 'samuel', email: 'samuel.westen01@gmail.com', password: 'chicken'
User.create username: 'grant', email: 'grant.Hanrahan0@gmail.com', password: 'chicken'
User.create username: 'steven', email: 'steven.phuong01@gmail.com', password: 'chicken'

puts "Created #{User.all.length} users."








dir = File.expand_path File.dirname(__FILE__)
file = File.read("#{dir}/cars.json")

all_users = User.all
all_statuses = [:upcoming, :failed, :sold]

Car.destroy_all

require 'json'
cars = JSON.parse(file)

cars.each do |car|
  c = Car.create({
    make: car["car_make"],
    model: car["car_model"],
    year: car["year"],
    colour: car["colour"],
    transmission: car["transmission"],
    kilometers: car["kilometres"],
    user: all_users.sample,
    bid_status: all_statuses.sample,
    opening_bid: rand(5_000..10_000),
    auction_date: DateTime.now + 1.month

    #auction date needs to == real time before auction countdown begins
  })

end

c = Car.last
c.update bid_status: "live", auction_date: DateTime.now + 10.seconds
puts "LastCar ID:#{c.id}"


b1 = Bid.create user: User.last, car: c, amount: c.opening_bid + Bid::MIN_INCREMENT

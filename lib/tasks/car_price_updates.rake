namespace :car_price_updates do
  desc "depricates the price of all cars by 2% every month since entry date."
  task monthly_deprecation: :environment do
    Car.find_each do |car|
      days = (Time.now.to_date - car.created_at.to_date).to_i
      if days % 30 == 0
        car.price = car.price - (car.price*0.02)
        car.save
      end
    end
  end

end

require "order"
require "restaurant"
require "delivery"


RSpec.describe "integration" do
    it "adds dishes to order" do
        food = Order.new
        dish_1 = Restaurant.new("sandwich")
        dish_2 = Restaurant.new("coffee")
        food.order(dish_1)
        food.order(dish_2)
        expect(food.receipt).to eq [dish_1, dish_2]
    end

end
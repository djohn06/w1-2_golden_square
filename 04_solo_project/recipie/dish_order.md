# Dish Order Method Design Recipe

## 1. Describe the Problem

> As a customer
> So that I can check if I want to order something
> I would like to see a list of dishes with prices.

> As a customer
> So that I can order the meal I want
> I would like to be able to select some number of several available dishes.

> As a customer
> So that I can verify that my order is correct
> I would like to see an itemised receipt with a grand total.

* Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

> As a customer
> So that I am reassured that my order will be delivered on time
> I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

## 2. Design the Method Signature

_Include the initializer and public methods with all parameters and return values._

```ruby
class Order
    def initialize
        # initialize different variables
    end

    def order(dish)
        # create the order the customer wants
    end

    def receipt
        # fail, if no dish has been ordered. Else,
        # return a list of the dishes the customer ordered
        # the respective prices of each dish
        # the grand total of the order
    end
end

class Restaurant
    def initialize(dish)
        # initialises the dish variable.
    end

    def show_menu
        # return the set menu the restaurant uses, as a hash {DishName => DishPrice}
    end
    
    def post_order_message
        # Return string: thank you message and time taken until food is with the customer.
    end    
end
```

## 3. Create Examples as Texts

_Make a list of examples of what the method will take and return_

```ruby

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
        

```



_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving provess of red, green, refactor to implement the behaviour._

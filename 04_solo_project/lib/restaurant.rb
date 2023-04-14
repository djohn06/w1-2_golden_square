require 'order'

class Restaurant
    def initialize(dish)
        # initialises the dish variable.
    end

    def show_menu
        # return the set menu the restaurant uses, as a hash {DishName => DishPrice}
        [
            {}
        ]
    end
    
    def post_order_message
        # Return string: thank you message and time taken until food is with the customer.
    end    
end
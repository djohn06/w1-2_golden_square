class Restaurant
    def initialize(dish)
        # initialises the dish variable.
        @dish = dish
    end

    def dish
        @dish
    end

    def show_menu
        # return the set menu the restaurant uses, as a hash {DishName => DishPrice}
        menu = [
            {'salad' => '£2.50'},
            {'hash brown' => '£1.00'},
            {'sandwich' => '£2.70'},
            {'fries' => '£2.00'},
            {'burger' => '£4.50'},
            {'fries, burger, & cold drink' => '£6.50'},
            {'cold drink' => '£1.50'},
            {'coffee' => '£1.50'},
            {'chai' => '£1.70'}
        ]
        return menu
    end

    def recieve_order
        # retrevive the order made by the customer

    end
    
    def post_order_message
        # Return string: thank you message and time taken until food is with the customer.

    end    
end
class Order
    def initialize
        # initialize different variables
        @order = []
    end

    def order(dish)
        # create the order the customer wants
        @order << dish
    end

    def receipt
        # fail, if no dish has been ordered. Else,
        # return a list of the dishes the customer ordered
        # the respective prices of each dish
        # the grand total of the order
    end
end
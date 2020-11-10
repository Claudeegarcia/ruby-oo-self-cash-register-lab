class CashRegister

    attr_accessor :total, :discount, :price, :items

    def initialize(total=0, discount=0)
        @total = total
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @price = price
        @total += price * quantity
        if quantity > 1
            counter = 0
            while counter < quantity
                @items << title
                counter += 1
            end
        else
            @items << title
        end
    end
    
    def apply_discount
        if @discount > 0
            @employee_discount = (price * discount)/100
            @total -= @employee_discount
            return "After the discount, the total comes to $#{total}."
        else
            return "After the discount, the total comes to $#{total}."
        end
    end

    def total
        @total
    end

    def void_last_transaction
        @total -= @price
    end
    
end

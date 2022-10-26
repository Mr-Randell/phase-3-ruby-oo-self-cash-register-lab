require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction, :item, :price, :quantity

    def initialize(discount=0, total=0)
        @discount = discount
        @total = total
        @items = []
    end

    def total
        @total
    end
    
    def add_item(title, price, quantity=1)
        self.total += price * quantity 
    end
    
    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total = total - ((discount * total)/100)
            "After the discount, the total comes to $#{self.total}."
        end
    end
    
    def items(item, price, quantity=1)
        self.items << "#{self.item}, #{self.price}, #{self.quantity}"
    end
    
    def void_last_transaction
        self.total -= self.last_transaction
    end

end
binding.pry
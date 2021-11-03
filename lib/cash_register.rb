require 'pry'
class CashRegister
    attr_accessor :total,:discount,:items
def initialize(discount=0)
    @total = 0
    @discount =  discount
    @items=[]
    # @@number_of_registers += 1
end


def add_item(title, price, quantity=1)
    self.total += price*quantity
    quantity.times {self.items << title}
    @last_transaction_amount = price* quantity
    
 
end

def apply_discount()
    if @discount == 0
        "There is no discount to apply."
    else self.total -= (self.total * @discount / 100)
        "After the discount, the total comes to $#{self.total}."
    end

end

def void_last_transaction
    @total -= @last_transaction_amount
    @last_transaction_amount = 0

end


end

# implement a .all_registers method that retrns the number of cash registers operating.

# @@number_of_registers = 0

#def self.all_registers
 ##@@number_of_registers
#end
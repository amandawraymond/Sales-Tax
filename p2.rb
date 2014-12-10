#books, food, medical supplies

book          = Item.new(name: "Book",          price: 12.49, category: "book")
music         = Item.new(name: "music CD",      price: 14.99, category: "music")
chocolate_bar = Item.new(name: "chocolate bar", price: 0.85,  category: "food")

puts book.sales_tax
puts book.import_tax

list_one = ShoppingCart.new([book, music, chocolate_bar])
puts list_one.itemized_receipt
puts list_one.sales_tax
puts list_one.grand_total

# Check out '%.2f' % 500 # "500.00"
# refactor code so the change to two decimals is in one spot

# public or privat
# you dont know the future so if you dont call it from the outside it should be private

def itemized_receipt
  @items.each do |item|
    tax = 0
    if !item[:exempt]
      tax = item[:price] * 0.10
    end
    if item[:imported]
      tax = tax + (item[:price] * 0.05) 
    end 
    tax = (tax * 20).ceil / 20.0 
    item_total = item[:price] + tax
    # put the below logic of conversion of number into string outside of line 30
    puts "1 #{item[:description]} : #{sprintf "%.2f", item_total}"
  end
end


def sales_tax
  sales_tax = 0
  @items.each do |item|
    if !item[:exempt]
      sales_tax += (item[:price] * 0.10)
      sales_tax = (sales_tax * 20).ceil / 20.0   
    end
    if item[:imported]
      sales_tax += (item[:price] * 0.05)
      sales_tax = (sales_tax * 20).ceil / 20.0 
    end    
  end
  @sales_tax = sales_tax
  puts "Sales Tax: #{sprintf "%.2f", sales_tax}"
end

def grand_total
  total = 0
  @items.each do |item|
    total += item[:price]
  end
  total = total + @sales_tax
  puts "Total: #{sprintf "%.2f", total}"
end






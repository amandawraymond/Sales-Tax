require './item'

def make_shopping_cart_1
  puts @item1 = Item.decorate(Item.new("1 book at 12.49"))
  puts @item2 = Item.decorate(Item.new("1 music CD at 14.99"))
  puts @item3 = Item.decorate(Item.new("1 chocolate bar at 0.85"))

end

# def make_shopping_cart_2
#   Item.new
# end

# def make_shopping_cart_3
#   Item.new
# end

# Input 1:
# 1 book at 12.49
# 1 music CD at 14.99
# 1 chocolate bar at 0.85
 
# Input 2:
# 1 imported box of chocolates at 10.00
# 1 imported bottle of perfume at 47.50
 
# Input 3:
# 1 imported bottle of perfume at 27.99
# 1 bottle of perfume at 18.99
# 1 packet of headache pills at 9.75
# 1 box of imported chocolates at 11.25


# puts "Tax on item1 is #{@item1.tax}"
# puts "The total cost of the item1 is #{@item1.price * @item1.tax}"

# Output 1:
# 1 book : 12.49
# 1 music CD: 16.49
# 1 chocolate bar: 0.85
# Sales Taxes: 1.50
# Total: 29.83
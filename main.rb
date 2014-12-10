require './item'
require './shopping_cart'


book                = Item.new(name: "book",                       price: 12.49, category: "book")
music               = Item.new(name: "music CD",                   price: 14.99, category: "music")
chocolate_bar       = Item.new(name: "chocolate bar",              price: 0.85,  category: "food")
chocolate_box       = Item.new(name: "imported box of chocolates", price: 10.00, category: "food")
perfume_big         = Item.new(name: "imported bottle of perfume", price: 47.50, category: "cosmetic")
perfume_med         = Item.new(name: "imported bottle of perfume", price: 27.99, category: "cosmetic")
perfume_sml         = Item.new(name: "bottle of perfume",          price: 18.99, category: "cosmetic")
headache_pills      = Item.new(name: "headache pills",             price: 9.75,  category: "medical")
dark_chocolate_box  = Item.new(name: "imported box of chocolates", price: 11.25, category: "food")

input1 = [book, music, chocolate_bar]
input2 = [chocolate_box, chocolate_box, perfume_big]
input3 = [perfume_med, perfume_sml, headache_pills, dark_chocolate_box]

my_cart1 = ShoppingCart.new(input1)
my_cart1.print_receipt

my_cart2 = ShoppingCart.new(input2)
my_cart2.print_receipt

my_cart3 = ShoppingCart.new(input3)
my_cart3.print_receipt



# send in ruby 
# send version one
# then
# send gold-plate version with Food class etc better structured defaults where they should be 

# class Food < Item
#   initialize
#   always do args
#     always super()
#   end
# over-write applicaable tax
# end

# do rspec suite


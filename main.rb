require './item'
require './item_food'
require './item_medical'
require './item_book'
require './item_cosmetic'
require './item_media'
require './item_other'
require './order'

# Please name your code with the problem and language used.
# Remember to also include a brief explanation of your design
#  and assumptions along with your code, as well as detailed 
#  instructions on how to run your application.

book                = Book.new(    name: "book",                       price: 12.49)
music               = Media.new(   name: "music CD",                   price: 14.99)
chocolate_bar       = Food.new(    name: "chocolate bar",              price: 0.85)
chocolate_box       = Food.new(    name: "imported box of chocolates", price: 10.00)
perfume_big         = Cosmetic.new(name: "imported bottle of perfume", price: 47.50)
perfume_med         = Cosmetic.new(name: "imported bottle of perfume", price: 27.99)
perfume_sml         = Cosmetic.new(name: "bottle of perfume",          price: 18.99)
headache_pills      = Medical.new( name: "headache pills",             price: 9.75)
dark_chocolate_box  = Food.new(    name: "imported box of chocolates", price: 11.25)

input1 = [book, music, chocolate_bar]
input2 = [chocolate_box, perfume_big]
input3 = [perfume_med, perfume_sml, headache_pills, dark_chocolate_box]

my_cart1 = Order.new(input1)
my_cart1.print_receipt

my_cart2 = Order.new(input2)
my_cart2.print_receipt

my_cart3 = Order.new(input3)
my_cart3.print_receipt

# input4 = [chocolate_bar, chocolate_bar, music, perfume_sml]
# my_cart4 = ShoppingCart.new(input4)
# my_cart4.print_receipt

# Assumptions: 
# 1. Desired format of receipt to be
#   #{quantity} #{item description} : #{price + tax}
#   instead of
#   #{quantity} #{item description} : #{quantity * (price + tax)}
# 2. Input should not include import or exempt attributes
# 3. "imported" would always be in the description of an imported item
# 4. When you order more than one kind of item, it is scanned and counted separately




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


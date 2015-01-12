require './item'
require './item_decorator'
require './item_types/item_food'
require './item_types/item_medical'
require './item_types/item_book'
require './item_types/item_cosmetic'
require './item_types/item_media'
require './item_types/item_other'
require './sales_tax'g
require './receipt'

book                = SalesTax.new( Book.new(     name: "book",                       price: 12.49 ))
music               = SalesTax.new( Media.new(    name: "music CD",                   price: 14.99 ))
chocolate_bar       = SalesTax.new( Food.new(     name: "chocolate bar",              price: 0.85  ))
chocolate_box       = SalesTax.new( Food.new(     name: "imported box of chocolates", price: 10.00 ))
perfume_big         = SalesTax.new( Cosmetic.new( name: "imported bottle of perfume", price: 47.50 ))
perfume_med         = SalesTax.new( Cosmetic.new( name: "imported bottle of perfume", price: 27.99 ))
perfume_sml         = SalesTax.new( Cosmetic.new( name: "bottle of perfume",          price: 18.99 ))
headache_pills      = SalesTax.new( Medical.new(  name: "headache pills",             price: 9.75  ))
dark_chocolate_box  = SalesTax.new( Food.new(     name: "imported box of chocolates", price: 11.25 ))


my_cart1 = Receipt.new([book, music, chocolate_bar])

my_cart2 = Receipt.new([chocolate_box, perfume_big])

my_cart3 = Receipt.new([perfume_med, perfume_sml, headache_pills, dark_chocolate_box])



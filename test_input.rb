# input1
# @items = [
#   { description: "book", price: 12.49, exempt: true },
#   { description: "music CD", price: 14.99, exempt: false },
#   { description: "chocolate bar", price: 0.85, exempt: true }
# ]
# input2
# @items = [
#   { description: "imported box of chocolates", price: 10.00, exempt: true, imported: true },
#   { description: "imported bottle of perfume", price: 47.50, exempt: false, imported: true }
# ]
# input3
# @items = [
#   { description: "imported bottle of perfume", price: 27.99, exempt: false, imported: true },
#   { description: "bottle of perfume", price: 18.99, exempt: false, imported: false },
#   { description: "packet of headache pills", price: 9.75, exempt: true, imported: false },
#   { description: "box of imported chocolates", price: 11.25, exempt: true, imported: true }

# ]



# Output 1:
# 1 book : 12.49
# 1 music CD: 16.49
# 1 chocolate bar: 0.85
# Sales Taxes: 1.50
# Total: 29.83

# Output 2:
# 1 imported box of chocolates: 10.50
# 1 imported bottle of perfume: 54.65
# Sales Taxes: 7.65
# Total: 65.15


# Output 3:
# 1 imported bottle of perfume: 32.19
# 1 bottle of perfume: 20.89
# 1 packet of headache pills: 9.75
# 1 imported box of chocolates: 11.85
# Sales Taxes: 6.70
# Total: 74.68
require 'pry'
# if an item is imported apply a 5% tax in addition
# end

# if an item is food, book, or medical product = 0% tax
# if an item is any other good impose a 10% tax

# sales tax = (tax rate * shelf price / 100 ) rounded to nearest 0.05

class Item #Parent
  attr_accessor :quantity, :description, :price
  def initialize(item_description)
    item_parts = item_description.split(" ")
    @quantity = item_parts[0]
    @description = Array(item_parts[1..-3]),
    @price = item_parts[-1].to_f
  end

  def self.exempt?
    exemptions = [ "book", "chocolate", "chocolates", "pills" ]

    if exemptions.include?(@description)
      true
    else
      false
    end
  end

  def self.imported?
    imported = ["import","Imported"]
    if imported.include?(@description)
      true
    else
      false
    end
  end

  def self.decorate(item)
    if Item.exempt?
      item = ExemptItem.new(item)
    end
    if Item.imported?
      item = ImportedItem.new(item)
    end
    item
  end

  def tax
    @price * 0.1 
  end

  def price
    @price + tax
  end

  def total_price
    @quantity * price
  end
end



class ExemptItem #Child Decorator Aggregate
  def initialize(item)
    @item = item
  end

  def tax
    @price * 0
  end

  def price
    @price + @item.tax
  end

  def total_price
    @quantity * @item.price
  end
end


class ImportedItem #Child Decorator Aggregate
  def initialize(item)
    @item = item
  end

  def tax
    @item.tax + (@price * 0.05)
  end

  def price
    @price + @item.tax
  end

  def total_price
    @quantity * @item.price
  end

end


item1 = Item.decorate(Item.new("1 chocolate bar at 0.85"))
puts "Tax on item1 is #{item1.tax}"
puts "The total cost of the item1 is #{item1.price * item1.tax}"

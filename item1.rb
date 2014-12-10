require 'pry'
require './exempt_item'
require './import_item'

class Item #Parent
  attr_accessor :quantity, :description, :price
  def initialize(item)
    # @item =  item
    item_parts = item.split(" ")
    @description = item_parts[1...-2],
    @price = item_parts[-1].to_f
  end

  def self.exempt?(item)
    exemptions = [ "book", "chocolate", "chocolates", "pills" ]
    item = Array(item)
    if item.include?(exemptions)
      true
    else
      false
    end
  end

  def self.imported?(item)
    item = Array(item)
    if item.include?("imported")
      true
    else
      false
    end
  end

  def self.decorate(item)
    if Item.exempt?(item)
      item = ExemptItem.new(item)
    end
    if Item.imported?(item)
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


  def to_s
    "#{@description[0..-2].join(" ")}: #{price}"
  end

end

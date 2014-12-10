require 'pry'
require './item'
class ImportItem #Child Decorator Aggregate
  attr_accessor :item
  def initialize(item)
    @item = item
  end

  def tax
    @item.tax + (@price * 0.05)
  end

  def price
    @price + @item.tax
  end

  def to_s
    "#{@description[0..-2].join(" ")}: #{price}"
  end
end
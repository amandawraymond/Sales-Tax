require 'pry'
require './item'
class ExemptItem #Child Decorator Aggregate
  attr_accessor :item
  def initialize(item)
    @item = item
  end

  def tax
    @price * 0
  end

  def price
    @price + @item.tax
  end

  def to_s
    "#{@description[0..-2].join(" ")}: #{price}"
  end

end
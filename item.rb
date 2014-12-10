class Item
  attr_reader :price, :name

  def initialize(args)
    @name     = args[:name]
    @category = args[:category]
    @price    = args[:price]
  end

  def exempt?
    exemptions = ["book","food","medical"]
    exemptions.include?(@category)
  end

  def imported?
    @name.include?("imported")
  end

  def applicable_tax
    tax = 0
    unless exempt?
      tax = @price * 0.10 
    end
    if imported?
      tax = tax + (@price * 0.05)   
    end 
    round_up(tax)
  end

  def price_with_tax
    @price + applicable_tax
  end

  # TODO: monkey-patch function into Number class 
  def round_up(number)
    (number * 20).ceil / 20.0
  end
end



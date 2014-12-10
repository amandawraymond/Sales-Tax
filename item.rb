class Item
  attr_reader :name

  def initialize(args)
    @name     = args[:name]
    @price    = args[:price]
    @imported = imported?
  end

  def price_with_tax
    @price + applicable_tax
  end

  def applicable_tax
    tax = 0
    unless @exempt
      tax = @price * 0.10 
    end
    if @imported
      tax = tax + (@price * 0.05)   
    end 
    round_up(tax)
  end

  private 

    def imported?
      @imported = true if @name.include?("imported")
    end

    # TODO: monkey-patch function into Number class 
    def round_up(number)
      (number * 20).ceil / 20.0
    end
end

class Food < Item
  def initialize(args)
    super(args)
    @exempt = true
  end
end

class Medical < Item
  def initialize(args)
    super(args)
    @exempt = true
  end
end

class Book < Item
  def initialize(args)
    super(args)
    @exempt = true
  end
end

class Cosmetic < Item
  def initialize(args)
    super(args)
    @exempt = false
  end
end

class Media < Item
  def initialize(args)
    super(args)
    @exempt = false
  end
end






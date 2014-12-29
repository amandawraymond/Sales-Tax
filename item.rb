class Item
  attr_reader :name

  def initialize(args)
    @name      = args[:name]
    @price     = args[:price]    
  end

  def taxation
    orgin_tax.to_f + item_category_tax.to_f
  end

  def applicable_tax
    applicable_tax = @price * @taxation
    round_up(applicable_tax)
  end

  def price_with_tax
    @price + applicable_tax
  end

  private

    def item_category_tax
      0.10 unless @exempt
    end

    def orgin_tax
      0.05 if @imported
    end

    # improvement: could monkey-patch function into Number class 
    def round_up(number)
      (number * 20).ceil / 20.0
    end
end














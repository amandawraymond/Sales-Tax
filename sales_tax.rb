class SalesTax
  attr_reader :name
  
  def initialize(item)
    @item      = item
    @name      = item.name
    @taxation  = taxation
  end

  def applicable_tax
    applicable_tax = @item.price * @taxation
    round_up(applicable_tax)
  end

  def price_with_tax
    @item.price + applicable_tax
  end

  private

    def taxation
      @item.orgin_tax.to_f + @item.item_category_tax.to_f
    end

    # improvement: could monkey-patch function into Number class 
    def round_up(number)
      (number * 20).ceil / 20.0
    end
end
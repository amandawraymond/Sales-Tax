class ShoppingCart
  def initialize(item)
    @item  = item
    apply_tax
  end

  def apply_tax
    # @items.each do |item|
      SalesTax.new(@item)
    # end
  end

end

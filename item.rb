class Item
  attr_reader :name, :price

  def initialize(args)
    @name      = args[:name]
    @price     = args[:price]    
  end

  def item_category_tax
    0.10 unless @exempt
  end

  def orgin_tax
    0.05 if @imported
  end
  
end














class ShoppingCart
  
  def initialize(items)
    @items = items
  end

  def print_receipt
    print_items
    print_sales_tax
    print_grand_total
  end  

  private

    def print_items
      unique_items = @items.uniq
      unique_items.each do |item|
        print_item(item)
      end
    end

    def print_item(item)
      puts item_info(item)
    end

    # Depending on desired output of receipt could consider to print * quantity instead of price
    def item_info(item)
      quantity = quantity_count(item)
      price = display_two_decimals(item.price_with_tax)
      "#{quantity} #{item.name}: #{price}"
    end

    def print_sales_tax
      puts "Sales Tax: #{display_two_decimals(sales_tax)}"
    end

    def sales_tax
      @items.reduce(0) { |memo, item| memo + item.applicable_tax }
    end

    def print_grand_total
      puts "Total: #{display_two_decimals(grand_total)}"
    end

    def grand_total
      @items.reduce(0) { |memo, item| memo + item.price_with_tax }
    end
    
    def display_two_decimals(number)
      sprintf "%.2f", number      
    end

    def quantity_count(item)
      @items.count(item) 
    end

end

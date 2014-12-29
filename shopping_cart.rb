class ShoppingCart
  
  def initialize(items)
    @items = items
  end

  def print_receipt
    print_items
    print_sales_tax
    print_grand_total
    print_new_line  #show multiple examples separated by a line
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

    # Depending on desired output of receipt could replace #{price} with price_and_quantity = display_two_decimals(item.price_with_tax * quantity) 
    def item_info(item)
      quantity = quantity_count(item)
      price = display_two_decimals(item.price_with_tax)
      "#{quantity} #{item.name}: #{price}"
    end

    # separated "puts" from code to be tested
    def print_sales_tax
       puts sales_tax_info
    end

    def sales_tax_info
      "Sales Tax: #{display_two_decimals(sales_tax)}"
    end

    def sales_tax
      @items.reduce(0) { |memo, item| memo + item.applicable_tax }
    end

    def print_grand_total
      puts grand_total_info
    end

    def grand_total_info
      "Total: #{display_two_decimals(grand_total)}"
    end

    def grand_total
      @items.reduce(0) { |memo, item| memo + item.price_with_tax }
    end

    def quantity_count(item)
      @items.count(item) 
    end
    
    def display_two_decimals(number)
      sprintf "%.2f", number      
    end

    def print_new_line
      puts "\n"
    end

end

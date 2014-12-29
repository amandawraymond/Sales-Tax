class Receipt
  def initialize(items)
    @ordered_items = items
    print_receipt
  end

  def print_receipt
    print_new_line
    print_title 
    print_dashed_line #visible line separation
    print_items
    print_dashed_line
    print_sales_tax
    print_grand_total
    print_new_line  #line separation between multiple orders 
  end  

  private

    def print_items
      unique_items = @ordered_items.uniq
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
      @ordered_items.reduce(0) { |memo, item| memo + item.applicable_tax }
    end

    def print_grand_total
      puts grand_total_info
    end

    def grand_total_info
      "Total: #{display_two_decimals(grand_total)}"
    end

    def grand_total
      @ordered_items.reduce(0) { |memo, item| memo + item.price_with_tax }
    end

    def quantity_count(item)
      @ordered_items.count(item) 
    end
    
    def display_two_decimals(number)
      sprintf "%.2f", number      
    end

    def print_new_line
      puts "\n"
    end

    def print_title
      puts "ThoughtWorks Receipt:"
    end

    def print_dashed_line
      puts "--------------------"
    end

end

class ItemDecorator < Item
  def initialize(args)
    super(args)
    @exempt    = exempt?
    @imported  = imported? 
  end

  private

    def exempt?
      exempted_categories = ["food","medical","book"]
      exempted_categories.include?(@category)     
    end

    def imported?
      @name.include?("imported")
    end
end

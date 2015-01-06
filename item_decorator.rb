class ItemDecorator < Item
  
  def initialize(args)
    super(args)
    @exempt    = exempt?
    @imported  = imported? 
  end

  private

    def exempt?
      exempted_categories = ["food","medical","book"] #only this line needs to be edited if the exempted list changes in the future
      exempted_categories.include?(@category)     
    end

    def imported?
      @name.include?("imported")
    end
end

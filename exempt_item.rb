
class ItemDecorator < Item
  def initialize(args)
    super(args)
    @exempt = exempt?
    @imported = imported?
  end

  private

    def exempt?
      if Book || Food || Medical 
    end

    def imported?
      @name.include?("imported")
    end

end
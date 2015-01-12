class Cosmetic < ItemDecorator
  
  def initialize(args)
    @category = "cosmetic"
    super(args)
  end
end

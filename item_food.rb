class Food < ItemDecorator
  def initialize(args)
    @category = "food"
    super(args)
  end

end
class Book < ItemDecorator
  def initialize(args)
    @category = "book"
    super(args)
  end

end
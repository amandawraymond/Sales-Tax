class Book < Item
  def initialize(args)
    @category = "book"
    super(args)
  end

end
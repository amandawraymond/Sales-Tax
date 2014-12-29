class Media < ItemDecorator
  def initialize(args)
    @category = "media"
    super(args)
  end

end

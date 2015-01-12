class Medical < ItemDecorator
  
  def initialize(args)
    @category = "medical"
    super(args)
  end
end
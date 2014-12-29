class Medical < Item
  def initialize(args)
    super(args)
    @exempt = true
  end
end
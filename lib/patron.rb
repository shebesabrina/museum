class Patron
  attr_reader :name
  attr_accessor :interests
  def initialize(name)
    @name = name
    @interests = []
  end

  def add_interest(interest)
    @interests << interest
  end
end

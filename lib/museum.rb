class Museum
  attr_reader :name,
              :exhibit
  def initialize(name)
    @name = name
    @exhibit =[]
  end

  def add_exhibit(exhibit, cost)
    @exhibit << exhibit
    @exhibit << cost
  end

  def revenue
    cost = 0
    if @name
      cost
    elsif Patron.new
      cost += 10
    end
  end
end

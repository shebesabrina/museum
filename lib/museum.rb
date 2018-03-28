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
end

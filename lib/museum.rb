class Museum
  attr_reader :name,
              :exhibit,
              :cost
  def initialize(name)
    @name = name
    @exhibit =[]
    @cost = []
  end

  def add_exhibit(exhibit, cost)
    @exhibit << exhibit + cost.to_s
    # @cost << cost
  end
end

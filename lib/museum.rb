require_relative './patron'
class Museum
  attr_reader :name,
              :exhibit,
              :cost
  def initialize(name)
    @name = name
    @exhibit =[]
    @cost = 0
  end

  def add_exhibit(exhibit, cost)
    @exhibit << exhibit
    @exhibit << cost
  end

  def revenue
    if @exhibit.empty?
      @cost
      # binding.pry
    elsif @exhibit.any?(interests)
      @cost += 10
    end
  end
end

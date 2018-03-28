require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require './lib/patron'
require 'pry'

class MuseumTest < Minitest::Test
  def test_it_exists
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_instance_of Museum, dmns
  end

  def test_museum_name
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_equal "Denver Museum of Nature and Science", dmns.name
  end

  def test_exhibit_cost
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)

    # binding.pry
    result = ["Dead Sea Scrolls", 10, "Gems and Minerals", 0]
    assert_equal result, dmns.exhibit
  end

  def test_revenue_starts_at_0
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal 0, dmns.revenue
  end

  def test_general_admittance_is_10_dollars
    dmns = Museum.new("Denver Museum of Nature and Science")
    bob = Patron.new("Bob")

    assert_equal 10, dmns.revenue
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'

class PatronTest < Minitest::Test
  def test_it_exists
    bob = Patron.new("Bob")
    assert_instance_of Patron, bob
  end

  def test_it_has_a_name
    bob = Patron.new("Bob")
    assert_equal "Bob", bob.name
  end

  def test_bob_starts_with_interests
    bob = Patron.new("Bob")
    assert_equal [], bob.interests
  end

  def test_bob_has_multiple_interests
    bob = Patron.new("Bob")
    bob.add_interest("Dead Sea Scrolls")
    bob.add_interest("Gems and Minerals")

    result = ["Dead Sea Scrolls", "Gems and Minerals"]
    binding.pry
    assert_equal result, bob.interests
  end
end

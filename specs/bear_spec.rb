require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Clown")
    @fish3 = Fish.new("Dory")

    @river = River.new("Nile")
    @river.add_to_river(@fish1)
    @river.add_to_river(@fish2)
    @river.add_to_river(@fish3)
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_take_fish_from_river
    @bear.take_fish(@river, @fish2)
    assert_equal(1, @bear.stomach.length)
    assert_equal(2, @river.fish_count)
  end

  def test_bear_roar
    assert_equal("Roar", @bear.roar)
  end

  def test_count_food_in_bear_stomach
    @bear.take_fish(@river, @fish1)
    assert_equal(1, @bear.food_count)
  end
end

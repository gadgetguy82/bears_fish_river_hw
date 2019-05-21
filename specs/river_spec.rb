require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")

    @bear = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Clown")
    @fish3 = Fish.new("Dory")
    @river.add_to_river(@fish1)
    @river.add_to_river(@fish2)
    @river.add_to_river(@fish3)

    @river2 = River.new("Nile")
    @river2.add_to_river(@fish1)
    @river2.add_to_river(@fish2)

  end

  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish_to_river
    assert_equal([@fish1, @fish2, @fish3], @river.fish_list)
  end

  def test_count_fish_in_river
    assert_equal(2, @river2.fish_count)
  end

  def test_remove_fish_from_river
    @river.remove_fish(@fish3)
    assert_equal(2, @river.fish_count)
  end

  def test_take_fish_from_river
    @bear.take_fish(@river, @fish2)
    assert_equal(1, @bear.stomach.length)
    assert_equal(2, @river.fish_count)
  end

  def test_count_food_in_bear_stomach
    @bear.take_fish(@river, @fish1)
    assert_equal(1, @bear.food_count)
  end
end

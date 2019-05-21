require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Clown")
    @fish3 = Fish.new("Dory")

    @river2 = River.new("Nile")
    @river2.add_to_river(@fish1)
    @river2.add_to_river(@fish2)
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish_to_river
    @river.add_to_river(@fish1)
    @river.add_to_river(@fish2)
    @river.add_to_river(@fish3)
    assert_equal([@fish1, @fish2, @fish3], @river.fish_list)
  end

  def test_count_fish_in_river
    assert_equal(2, @river2.fish_count)
  end

end

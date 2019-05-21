require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_roar
    assert_equal("Roar", @bear.roar)
  end
end

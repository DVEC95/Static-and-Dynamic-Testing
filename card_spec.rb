require("minitest/autorun")
require("minitest/reporters")
require_relative("./card.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCard < Minitest::Test

  def setup
    @card = Card.new("hearts", 7)
  end

  def test_get_data
    assert_equal("hearts", @card.suit)
    assert_equal(7, @card.value)
  end

end

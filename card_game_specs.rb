require("minitest/autorun")
require("minitest/reporters")
require_relative("./card.rb")
require_relative("./card_game.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCardGame < Minitest::Test

  def setup
    @card1 = Card.new("spade", 1)
    @card2 = Card.new("diamond", 5)
    @card3 = Card.new("club", 9)
    @card4 = Card.new("heart", 7)
  end

  def test_check_for_ace
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

end

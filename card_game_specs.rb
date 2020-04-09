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
    @cards = [@card1, @card2, @card3, @card4]
  end

  def test_check_for_ace
    assert_equal(true, CardGame.check_for_ace(@card1))
    assert_equal(false, CardGame.check_for_ace(@card2))
  end

  def test_highest_card
    assert_equal(@card3, CardGame.highest_card(@card2, @card3))
  end

  def test_cards_total
    assert_equal("You have a total of 22.", CardGame.cards_total(@cards))
  end

end

require("minitest/autorun")
require("minitest/reporters")
require_relative("card.rb")
require_relative("card_game.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCardGame < Minitest::Test

  def test_check_for_ace
    @card = Card.new(spade, 1)
    assert_equal(check_for_ace(@card))
  end

end

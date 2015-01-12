require 'minitest/autorun'
require './blackjack'

class TestCard < MiniTest::Unit::TestCase
  
  def setup
    @card = Card.new(2, :hearts)
  end

  def test_card_has_suit
    assert_equal :hearts, @card.suit
  end

  def test_card_has_value
    assert_equal 2, @card.value
  end

  def test_face_card_valued_at_10
    card = Card.new(:king, :diamonds)
    assert_equal 10, card.value
  end

  def test_ace_valued_at_11
    ace = Card.new(:ace, :spades)
    assert_equal 11, ace.value
  end

  def test_numbered_card_displays_its_suit_and_value
    assert_equal "2 of Hearts", @card.display
  end

  def test_face_card_displays_suit_and_face_value
    king_of_clubs = Card.new(:king, :clubs)
    assert_equal "King of Clubs", king_of_clubs.display
  end
end

class TestDeck < MiniTest::Unit::TestCase

  def setup
    @deck = Deck.new
  end

  def test_deck_has_52_cards
    assert_equal 52, @deck.size
    assert_kind_of Card, @deck[0]
  end

  def test_deck_starts_shuffled
    pass # how could you test this?
  end

  def test_deck_can_deal_cards
    cards = @deck.deal(2)
    assert_kind_of Card, cards[0]
    assert_equal 50, @deck.size
  end
end

class TestBlackjack < MiniTest::Unit::TestCase

  def setup
    @game = Blackjack.new
  end

  def test_game_has_deck_of_cards
    assert @game.deck
  end

  def test_game_has_a_player
    assert @game.player
  end

  def test_game_has_a_dealer
    assert @game.dealer
  end

  def test_player_starts_with_2_cards_from_deck
    assert_equal 2, @game.player.hand.size
  end 
  
  def test_dealer_starts_with_2_cards_from_deck
    assert_equal 2, @game.dealer.hand.size
  end

  def test_game_can_display_player_cards_and_1_of_dealers
    player_display = @game.player.display
    dealer_card = @game.dealer.hand[0]
    assert_equal "#{player_display}.\n Dealer shows #{dealer_card.display}",
                 @game.display
  end

  def test_player_dealt_21_wins_if_dealer_has_less
    deck = Deck.new([ Card.new(10, :clubs), Card.new(:ace, :hearts),
                      Card.new(4, :diamonds), Card.new(7, :spades)])
    game = Blackjack.new(deck)
    assert_equal game.player, game.winner
  end

  def test_player_dealt_21_wins_if_dealer_has_same
    deck = Deck.new([ Card.new(10, :clubs), Card.new(:ace, :hearts),
                      Card.new(10, :diamonds), Card.new(:ace, :spades)])
    game = Blackjack.new(deck)
    assert game.push
  end

  def test_hit_gives_a_card_to_the_player
    @game.hit!
    assert_equal 3, @game.player.hand.size
  end

  def test_dealer_wins_if_player_busts
    deck = Deck.new([ Card.new(10, :clubs), Card.new(:jack, :hearts),
                      Card.new(2, :hearts), Card.new(3, :clubs),
                      Card.new(10, :diamonds)])
    game = Blackjack.new(deck)
    game.hit!
    assert_equal game.dealer, game.winner
  end 

  def test_player_wins_with_21_after_3_cards_if_dealer_has_less
    deck = Deck.new([ Card.new(10, :clubs), Card.new(5, :hearts),
                      Card.new(2, :hearts), Card.new(3, :clubs),
                      Card.new(6, :diamonds)])
    game = Blackjack.new(deck)
    game.hit!
    assert_equal game.player, game.winner
  end

  def test_dealer_gets_cards_until_total_reaches_17
    deck = Deck.new([ Card.new(10, :clubs), Card.new(5, :hearts),
                      Card.new(2, :hearts), Card.new(3, :clubs),
                      Card.new(6, :diamonds), Card.new(2, :clubs),
                      Card.new(4, :spades), Card.new(9, :clubs)])
    game = Blackjack.new(deck)
    game.stand
    assert_equal 5, game.dealer.hand.size
  end

end


class TestPlayer < MiniTest::Unit::TestCase

  def setup
    cards = [ Card.new(8, :spades), Card.new(6, :clubs)]
    @player = Player.new(cards) 
  end

  def test_player_has_hand
    assert @player.hand
  end

  def test_player_hand_holds_cards
    card = Card.new(2, :hearts)
    @player.take card
    assert @player.hand.include? card
  end

  def test_player_hand_has_value
    assert_equal 14, @player.hand_value
  end

  def test_player_displays_hand
    assert_equal "Player has 8 of Spades and 6 of Clubs", @player.display
  end

  def test_player_busts_with_hand_valued_over_21
    @player.take Card.new(8, :hearts)
    assert @player.bust?
  end
end
class HoldemVariation
  include FiftyTwoDeck
  include RemoveCardsFromDeck

  def deal_hole_cards
    remove_cards(2)
  end

  def deal_board_cards
    remove_cards(5)
  end
end
class RoyalVariation
  include RemoveCardsFromDeck
  LEGAL_CARDS = %w(Ts Td Th Tc Js Jd Jh Jc Qs 
                   Qd Qh Qc Ks Kd Kh Kc As Ad Ah Ac)
  attr_reader :deck

  def initialize
    @deck = RoyalVariation::LEGAL_CARDS.clone
  end

  def deal_hole_cards
    remove_cards(2)
  end

  def deal_board_cards
    remove_cards(5)
  end
end
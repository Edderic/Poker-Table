# variations: HOLDEM, OMAHA, ROYAL
# competition_types: RING, MTT
# betting_types: NO_LIMIT, POT_LIMIT, FIXED_LIMIT

# include ActiveModel::Model

class PokerTable
  attr_accessor :variation, :competition_type, :betting_type

  def initialize(variation, competition_type, betting_type)
  	@variation = variation
  	@competition_type = competition_type
  	@betting_type = betting_type
  end

  def type
  	@competition_type.type
  end

  def deck
  	@variation.deck
  end

  def deal_hole_cards
  	@variation.deal_hole_cards
  end

  def deal_board_cards
  	@variation.deal_board_cards
  end

  def min_raise
  	@betting_type.min_raise
  end

  def max_raise
  	@betting_type.max_raise
  end 	
end
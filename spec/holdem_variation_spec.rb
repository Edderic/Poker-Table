describe 'HoldemVariation' do
  context '#deck' do
  	it 'should give us a regular set of 52 cards' do
      holdem = HoldemVariation.new

      expect(holdem.deck).to eq HoldemVariation::LEGAL_CARDS
    end
  end

  context '#deal_hole_cards' do
    it 'should remove two cards from the deck' do
      holdem = HoldemVariation.new

      deal_hole_cards = holdem.deal_hole_cards
      expect(deal_hole_cards.count).to eq 2

      expect_class_invariant_to_be_maintained(deal_hole_cards, holdem)
    end
  end

  context '#deal_board_cards' do
    it 'should remove five cards from the deck' do
      holdem = HoldemVariation.new

      deal_board_cards = holdem.deal_board_cards
      expect(deal_board_cards.count).to eq 5

      expect_class_invariant_to_be_maintained(deal_board_cards, holdem)
    end
  end
end
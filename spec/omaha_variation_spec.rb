describe 'OmahaVariation' do
  context '#deck' do
    it 'should give us a regular set of 52 cards' do
      omaha = OmahaVariation.new

      expect(omaha.deck).to eq OmahaVariation::LEGAL_CARDS
    end
  end

  context '#deal_hole_cards' do
    it 'should remove four cards from the deck' do
      omaha = OmahaVariation.new

      deal_hole_cards = omaha.deal_hole_cards
      expect(deal_hole_cards.count).to eq 4

      expect_class_invariant_to_be_maintained(deal_hole_cards, omaha)
    end
  end

  context '#deal_board_cards' do
    it 'should remove five cards from the deck' do
      omaha = OmahaVariation.new

      deal_board_cards = omaha.deal_board_cards
      expect(deal_board_cards.count).to eq 5

      expect_class_invariant_to_be_maintained(deal_board_cards, omaha)
    end
  end
end
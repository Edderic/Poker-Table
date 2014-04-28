describe 'RoyalVariation' do
  context '#deck' do
    it 'should give us a combination of cards rank 10-14 and each suit' do
      royal = RoyalVariation.new

      expect(royal.deck).to eq RoyalVariation::LEGAL_CARDS
    end
  end

  context '#deal_hole_cards' do
    it 'should remove two cards from the deck' do
      royal = RoyalVariation.new

      deal_hole_cards = royal.deal_hole_cards
      expect(deal_hole_cards.count).to eq 2

      expect_class_invariant_to_be_maintained(deal_hole_cards, royal)
    end
  end

  context '#deal_board_cards' do
    it 'should remove 5 from the deck' do
      royal = RoyalVariation.new

      deal_board_cards = royal.deal_board_cards
      expect(deal_board_cards.count).to eq 5

      expect_class_invariant_to_be_maintained(deal_board_cards, royal)
    end
  end
end

def expect_class_invariant_to_be_maintained(deal_hole_cards, variation)
  union = deal_hole_cards | variation.deck
  expect(union.count).to eq variation.class::LEGAL_CARDS.count

  intersection = union & variation.class::LEGAL_CARDS

  expect(intersection.count).to eq variation.class::LEGAL_CARDS.count
end
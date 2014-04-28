require 'spec_helper'

describe PokerTable do

	context '#type' do
    it 'should delegate #type to its competition_type' do
      variation = double 'variation'
      competition_type = double 'competition_type'
      competition_type.stub :type
      betting_type = double 'betting_type'
      table = PokerTable.new variation, 
                      competition_type,
                          betting_type

      table.type

      expect(competition_type).to have_received :type
    end
  end

  context '#deck' do
    it 'should delegate #deck to variation' do
      variation = double 'variation'
      variation.stub :deck
      competition_type = double 'competition_type'
      betting_type = double 'betting_type'
      table = PokerTable.new variation, 
                      competition_type,
                          betting_type

      table.deck

      expect(variation).to have_received :deck
    end
  end

  context '#deal_hole_cards' do
    it 'should delegate #deal_hole_cards to variation' do
      variation = double 'variation'
      variation.stub :deal_hole_cards
      competition_type = double 'competition_type'
      betting_type = double 'betting_type'
      table = PokerTable.new variation, 
                      competition_type,
                          betting_type

      table.deal_hole_cards

      expect(variation).to have_received :deal_hole_cards
    end
  end

  context '#deal_board_cards' do
    it 'should delegate #deal_board_cards to variation' do
      variation = double 'variation'
      variation.stub :deal_board_cards
      competition_type = double 'competition_type'
      betting_type = double 'betting_type'
      table = PokerTable.new variation, 
                      competition_type,
                          betting_type

      table.deal_board_cards

      expect(variation).to have_received :deal_board_cards
    end
  end

  context '#min_raise' do
    it 'should delegate #min_raise to betting_type' do
      variation = double 'variation'
      competition_type = double 'competition_type'
      betting_type = double 'betting_type'
      betting_type.stub :min_raise
      table = PokerTable.new variation, 
                      competition_type,
                          betting_type

      table.min_raise

      expect(betting_type).to have_received :min_raise
    end
  end

  context '#max_raise' do
    it 'should delegate #max_raise to betting_type' do
      variation = double 'variation'
      competition_type = double 'competition_type'
      betting_type = double 'betting_type'
      betting_type.stub :max_raise
      table = PokerTable.new variation, 
                      competition_type,
                          betting_type

      table.max_raise

      expect(betting_type).to have_received :max_raise
    end
  end
end
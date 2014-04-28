module RemoveCardsFromDeck
  def remove_cards(num)
    results = []
    num.times do 
      index_to_slice = Random.new.rand(deck.count)
      results << deck.slice!(index_to_slice)
    end

    results 
  end
end
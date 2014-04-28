module FiftyTwoDeck

  LEGAL_CARDS = %w(2s 2d 2h 2c 3s 3d 3h 3c 4s 4d 4h 
        4c 5s 5d 5h 5c 6s 6d 6h 6c 7s 7d 7h 7c 8s 8d 8h 8c 9s 9d 9h 
        9c Ts Td Th Tc Js Jd Jh Jc Qs Qd Qh Qc Ks Kd Kh Kc As Ad Ah Ac)

  attr_accessor :deck

  def initialize
    self.deck = LEGAL_CARDS.clone
  end

  # def deck
  #   self.class::LEGAL_CARDS
  # end
end
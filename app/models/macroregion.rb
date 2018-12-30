class Macroregion < ApplicationRecord
    has_many :addresses
    has_many :cards
    has_many :publishers

    def unassigned_cards
        @cards = []
        
        self.cards.each do |card|
            card.is_at_work? ? @cards << card : nil
        end

        @cards
    end

    def assigned_cards
        @cards = []
        
        self.cards.each do |card|
            !card.is_at_work? ? @cards << card : nil
        end

        @cards
    end
    
end

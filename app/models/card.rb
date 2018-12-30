class Card < ApplicationRecord
    has_many :addresses
    has_many :assignments
    belongs_to :macroregion

    def description
        @answer = ""
        self.addresses.each do |address|
            @answer = @answer + "#{address.street}"
        end
    end

    def self.working_cards
        # hash = {macrorregion => [card1, card2, card3]}
        @addresses = {}

        Assignment.all.pluck(:card_id).uniq.each do |card_id|
            @card = Card.find(card_id)

            if @addresses.key?(@card.macroregion.macroreg)
                @addresses[@card.macroregion.macroreg] = @addresses[@card.macroregion.macroreg] << @card
            else
                @addresses[@card.macroregion.macroreg] = [@card]
            end
        end

        @addresses
    end

end

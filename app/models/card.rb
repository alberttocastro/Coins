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

        Assignment.where(date: nil).pluck(:card_id).uniq.each do |card_id|
            @card = Card.find(card_id)

            if @addresses.key?(@card.macroregion.macroreg)
                @addresses[@card.macroregion.macroreg] = @addresses[@card.macroregion.macroreg] << @card
            else
                @addresses[@card.macroregion.macroreg] = [@card]
            end
        end

        @addresses
    end

    # Retorna todas as pessoas designadas para um determinado cartão de território
    def people_assigned_to_the_card
        @assigneds = {}

        @assignments = Assignment.where(card_id: self.id).order(:date)
        @assignments.pluck(:date).uniq.each do |date|
            date.nil? ? @date = "-" : @date = date.strftime("%d/%m/%Y")
            @assigneds[@date] = []
            @assignments.where(date: date).each do |assignment|
                @assigneds[@date] = @assigneds[@date] << assignment.user.email
            end
        end

        @assigneds
    end

    def is_at_work?
        # Está sendo trabalhado se não tiver uma designação com data
        Assignment.where(card_id: self.id, date: nil).length > 0
    end

    def name_and_number
        "#{self.name} - #{self.number}"
    end
    
end

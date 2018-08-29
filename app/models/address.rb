class Address < ApplicationRecord
    has_and_belongs_to_many :idioms
    belongs_to :adrstype
    belongs_to :macroregion
    belongs_to :group
    belongs_to :card
    has_many :telephones
    has_many :visits

    def nationality
        if !self.nationality_id.nil?
            Nationality.find(self.nationality_id)
        end
    end

    # Retorna todos os endereços que não devem ser visitados de acordo com o id da macroregião
    def self.do_not_calls(macroregion_id)
      @answer = []

      Address.where(macroregion_id: macroregion_id).each do |address|
        address.is_visitable? ? nil : @answer << address
      end

      @answer
    end

    # Retorna se o endereço foi feito naquela designação
    def done?(assignment_id)
      !AssignmentAddress.where(address_id:self.id, assignment_id: assignment_id).empty?
    end
end
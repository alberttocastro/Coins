class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Retorna todos os endereços que não devem ser batidos de acordo com a deisgnação da pessoa, no seguinte formato:
  # ["Macroregião",[Endereço 1, Endereço 2, Endereço 3]]
  def do_not_call_info
    @answer = []

    @macroregions = []
    self.assignments_to_do.each do |assignment|
      assignment.card.addresses.each do |address|
        @answer << address.macroregion_id
      end
    end

    @macroregions = @macroregions.uniq

    @macroregions.each do |macroregion_id|
      @answer << [Macroregion.find(macroregion_id), Address.do_not_calls(macroregion_id)]
    end

    @answer

  end

  # Retorna todas as designações ainda não completas do usuário
  def assignments_to_do
    @answer = []
    
    Assignment.where(user_id: self.id).each do |assignment|
      assignment.concluded? ? nil : @answer << assignment
    end

    @answer === [] ? @answer : [@answer]
  end
end

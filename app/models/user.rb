class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Retorna todos os endereços que não devem ser batidos de acordo com a deisgnação da pessoa, no seguinte formato:
  # ["Macroregião",[Endereço 1, Endereço 2, Endereço 3]]
  def do_not_call_info
    @do_not_call_info = []

    @macroregions = []
    self.assignments_to_do.each do |assignment|
      begin
        assignment.card.addresses.each do |address|
          @macroregions << address.macroregion_id
        end
      rescue => exception
        puts "exception block"
      end
    end

    @macroregions = @macroregions.uniq

    @macroregions.each do |macroregion_id|
      @do_not_call_info << [Macroregion.find(macroregion_id), Address.do_not_calls(macroregion_id)]
    end

    @do_not_call_info
  end

  # Retorna todas as designações ainda não completas do usuário
  def assignments_to_do
    @assignments_to_do = []
    
    Assignment.where(user_id: self.id).each do |assignment|
      assignment.concluded? ? nil : @assignments_to_do << assignment
    end

    @assignments_to_do
  end
end

class Assignment < ApplicationRecord

  belongs_to :card
  belongs_to :user

    # A verificação de concluido se dá de acordo com a data
    def concluded?
      !self.date.nil?
    end

    # Retorna um array com todos os endereços que foram prontos nessa designação
    def all_done
      @array = []
      AssignmentAddress.where(assignment_id: self.id).each do |assignment_address|
        @array << assignment_address.address_id
      end

      return @array
    end

    # Sempre depois que houver o commit, caso a data tenha sido preenchida, ele destroi todas as informações de endereços que já foram feitos
    after_commit do
      if self.date_changed? && !self.date.nil?
        AssignmentAddress.where(assignment_id: self.id).destroy
      end
    end

    def declare_concluded
      
      self.update(date: Date.today)

    end
    
end

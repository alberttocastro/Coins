class Assignment < ApplicationRecord

    # A verificação de concluido se dá de acordo com a data
    def concluded?
      !self.date.nil?
    end
end

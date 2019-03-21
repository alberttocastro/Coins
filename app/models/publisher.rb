class Publisher < ApplicationRecord
    has_many :addresses
    belongs_to :group
    belongs_to :macroregion

    # Retorna todos os publicadores que estão sem usuário registrado
    # Caso envie um id de usuário, como no caso de um usuário que já tem o publicador cadastrado, retorna o usuário recebido na primeira posição, e em seguida os outros que ainda não tem publicador
    def self.without_user(publisher_id = "")
        @answer = []
        Publisher.all.each do |publisher|
            User.where(publisher_id: publisher.id).length == 0 ? @answer << publisher : nil
        end

        if publisher_id != ""
            @answer.unshift(Publisher.find(publisher_id))
        end

        # o retorno
        @answer
    end
    
end

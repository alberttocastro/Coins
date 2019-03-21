class Publisher < ApplicationRecord
    has_many :addresses
    belongs_to :group
    belongs_to :macroregion

    def self.without_user
        @answer = []
        Publisher.all.each do |publisher|
            User.where(publisher_id: publisher.id).length == 0 ? @answer << publisher : nil
        end

        # o retorno
        @answer
    end
    
end

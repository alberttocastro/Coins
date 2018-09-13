class Card < ApplicationRecord
    has_many :addresses
    has_many :assignments

    def description
        @answer = ""
        self.addresses.each do |address|
            @answer = @answer + "#{address.street}"
        end
      
    end

end

class Onepersheet < Prawn::Document
    def initialize(card)
        super(page_size:[419.53,297.64], margin:[10,10,10,10])

        @pipe = " | "

        text Date.current.to_s, align: :right, size: 6
        text card.number.to_s + " " + card.name, style: :bold, align: :center
        
        move_down 10
        @many = 1
        Address.where("card_number = ?", card.number).each do
            @many = @many + 1
        end

        # if(@many >= 5)
        #     @fontsize = 14
        # elsif(@many >= 8)
        #     @fontsize = 6
        # end
        @fontsize = 14

        @address = 1
        Address.where("card_number = ?", card.number).each do |address|
            
            begin
                @nationality = Nationality.find(address.nationality_id).country
            rescue ActiveRecord::RecordNotFound
                @nationality = Nationality.new(country: " ").country
            end

            if address.isvisitable
                text @address.to_s + @pipe + address.name + " (" + @nationality + ")" + @pipe + "(" + address.neighborhood + ")" + " " + address.street + " " + "[Refs.:" + address.references + "]" + @pipe + address.comments, size: @fontsize
            else
                text @address.to_s + @pipe + address.name + " (" + @nationality + ")" + @pipe + "(" + address.neighborhood + ")" + " " + address.street + " " + "[Refs.:" + address.references + "]" + @pipe + address.comments, color: 'FF0000', size: @fontsize
            end
            @address = @address + 1

            move_down 5
        end
    end
end
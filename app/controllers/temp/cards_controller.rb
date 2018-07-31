class CardsController < ApplicationController
    before_action :authenticate_user!
    def new   
        @card = Card.new
    end

    def create
        @card = Card.new(card_params)
        
        if @card.save
            redirect_to @card
        else
            render 'new'
        end
    end
    
    def show
        @card = Card.find(params[:id])
    end

    def edit
        @card = Card.find(params[:id])
    end

    def update
        @card = Card.find(params[:id])
        @card.update(card_params)

        redirect_to @card
    end

    def index
        @cards = Card.all
    end

    def destroy
        @card = Card.find(params[:id])
        @card.destroy
    
        redirect_to cards_path
    end

    def unassigned
        @unassigned = Address.where("card_number = ?", 0)
    end

    def print
        if(params[:card] == nil)
            @card = Card.all
            @name = "allcards"
        else
            @card = Card.where("number = ?", params[:card]).first
            @name = @card.number.to_s+"_"+@card.name
        end
        respond_to do |format|
            format.html
            format.pdf do
                if(params[:card] == nil)
                    pdf = Manyperdocument.new(@card)
                else
                    pdf = Onepersheet.new(@card)
                end
                send_data pdf.render, filename: @name + '.pdf', type: 'aplication/pdf', disposition: "inline"
            end
        end  
    end

    private def card_params
        params.require(:card).permit(:number, :name)
    end

end

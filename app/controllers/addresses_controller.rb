class AddressesController < ApplicationController
    before_action :authorization, only: [:destory]
    def new   
        @address = Address.new

        @nationalities = Nationality.all
    end

    def create
        @address = Address.new(address_params)
        
        if @address.save
            redirect_to @address
        else
            render 'new'
        end
    end
    
    def show
        @address = Address.find(params[:id])

        @visit = Visit.new(date: Date.current)
        @visits = Visit.where("address_id = ?", params[:id]).order(date: :desc)
    end

    def edit
        @address = Address.find(params[:id])
    end

    def update
        @address = Address.find(params[:id])
        @address.update(address_params)

        redirect_to @address
    end

    def index
        @addresses = Address.all
        @amount = 0
        @addresses.each do |address|
            @amount = @amount +1
        end

    end

    def destroy
        @address = Address.find(params[:id])
        @address.destroy
    
        redirect_to addresses_path
    end

    private
    
    def address_params
        params.require(:address).permit(:neighborhood, :street, :nationality_id, :idiom_id, :name, :isvalid, :isvisitable, :isvisited, :adrstype_id, :comments, :references, :publisher_id, :macroregion_id, :group_id, :second_language, :card_number)
    end

    def authorization
        authorize current_user, :admin?
    end
    

end

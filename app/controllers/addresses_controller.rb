class AddressesController < ApplicationController

    def new   
        @address = Address.new
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
    end

    def destroy
        @address = Address.find(params[:id])
        @address.destroy
    
        redirect_to addresses_path
    end

    private def address_params
        params.require(:address).permit(:neighborhood, :street, :nationality_id, :idiom_id, :name, :isvalid, :isvisitable, :isvisited, :adrstype_id, :comments, :references, :publisher_id, :macroregion_id, :group_id)
    end

end

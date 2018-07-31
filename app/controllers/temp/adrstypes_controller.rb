class AdrstypesController < ApplicationController
    before_action :authenticate_user!
    def new   
        @adrstype = Adrstype.new
    end

    def create
        @adrstype = Adrstype.new(adrstypes_params)
        
        if @adrstype.save
            redirect_to @adrstype
        else
            render 'new'
        end
    end
    
    def show
        @adrstype = Adrstype.find(params[:id])
    end

    def edit
        @adrstype = Adrstype.find(params[:id])
    end

    def update
        @adrstype = Adrstype.find(params[:id])
        @adrstype.update(adrstypes_params)

        redirect_to @adrstype
    end

    def index
        @adrstypes = Adrstype.all
    end

    def destroy
        @adrstype = Adrstype.find(params[:id])
        @adrstype.destroy
    
        redirect_to adrstypes_path
    end

    private def adrstypes_params
        params.require(:adrstype).permit(:typename)
    end

end

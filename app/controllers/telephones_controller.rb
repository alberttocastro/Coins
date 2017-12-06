class TelephonesController < ApplicationController

    def new   
        @telephone = Telephone.new
    end

    def create
        @telephone = Telephone.new(telephone_params)
        
        if @telephone.save
            redirect_to @telephone
        else
            render 'new'
        end
    end
    
    def show
        @telephone = Telephone.find(params[:id])
    end

    def edit
        @telephone = Telephone.find(params[:id])
    end

    def update
        @telephone = Telephone.find(params[:id])
        @telephone.update(telephone_params)

        redirect_to @telephone
    end

    def index
        @telephones = Telephone.all
    end

    def destroy
        @telephone = Telephone.find(params[:id])
        @telephone.destroy
    
        redirect_to telephones_path
    end

    private def telephone_params
        params.require(:telephone).permit(:name, :number, :address_id)
    end

end

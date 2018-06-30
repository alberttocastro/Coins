class NationalitiesController < ApplicationController
    before_action :authenticate_user!
    def new   
        @nationality = Nationality.new
    end

    def create
        @nationality = Nationality.new(nationality_params)
        
        if @nationality.save
            redirect_to @nationality
        else
            render 'new'
        end
    end
    
    def show
        @nationality = Nationality.find(params[:id])
    end

    def edit
        @nationality = Nationality.find(params[:id])
    end

    def update
        @nationality = Nationality.find(params[:id])
        @nationality.update(nationality_params)

        redirect_to @nationality
    end

    def index
        @nationalities = Nationality.all
    end

    def destroy
        @nationality = Nationality.find(params[:id])
        @nationality.destroy
    
        redirect_to nationalities_path
    end

    private def nationality_params
        params.require(:nationality).permit(:country)
    end


end

class IdiomsController < ApplicationController


    def new   
        @idiom = Idiom.new
    end

    def create
        @idiom = Idiom.new(nationality_params)
        
        if @idiom.save
            redirect_to @idiom
        else
            render 'new'
        end
    end
    
    def show
        @idiom = Idiom.find(params[:id])
    end

    def edit
        @idiom = Idiom.find(params[:id])
    end

    def update
        @idiom = Idiom.find(params[:id])
        @idiom.update(nationality_params)

        redirect_to @nationality
    end

    def index
        @idioms = Idiom.all
    end

    def destroy
        @idiom = Idiom.find(params[:id])
        @idiom.destroy
    
        redirect_to idioms_path
    end

    private def nationality_params
        params.require(:idiom).permit(:language)
    end



end

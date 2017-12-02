class MacroregionsController < ApplicationController

    def new   
        @macroregion = Macroregion.new
    end

    def create
        @macroregion = Macroregion.new(macroregions_params)
        
        if @macroregion.save
            redirect_to @macroregion
        else
            render 'new'
        end
    end
    
    def show
        @macroregion = Macroregion.find(params[:id])
    end

    def edit
        @macroregion = Macroregion.find(params[:id])
    end

    def update
        @macroregion = Macroregion.find(params[:id])
        @macroregion.update(macroregions_params)

        redirect_to @macroregion
    end

    def index
        @macroregions = Macroregion.all
    end

    def destroy
        @macroregion = Macroregion.find(params[:id])
        @macroregion.destroy
    
        redirect_to macroregions_path
    end

    private def macroregions_params
        params.require(:macroregion).permit(:macroreg)
    end
end

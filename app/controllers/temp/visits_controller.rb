require "time"
class VisitsController < ApplicationController
    before_action :authenticate_user!
    def new   
        @visit = Visit.new
    end

    def create
        
        @visit = Visit.new(visits_params)
        @visit.address_id = params.require(:address_id)
        @visit.date = Date.parse(params.require(:visit).require(:date))
        
        if @visit.save
            redirect_to address_path(Address.find(params.require(:address_id)))
        end
    end
    
    def show
        @visits = Visit.find(params[:id])
    end

    def edit
        @visits = Visit.find(params[:id])
    end

    def update
        @visit = Visit.find(params[:id])
        @visit.update(visits_params)

        redirect_to @adrstype
    end

    def index
        @visits = Visit.all
    end

    def destroy
        @visit = Visit.find(params[:id])
        @path = @visit.address_id
        @visit.destroy
    
        redirect_to address_path(Address.find(@path))
    end

    private def visits_params
        params.require(:visit).permit(:address_id, :publisher_id, :comment, :date)
    end

end

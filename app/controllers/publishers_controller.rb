class PublishersController < ApplicationController
    before_action :authenticate_user!
    def new   
        @publisher = Publisher.new
    end

    def create
        @publisher = Publisher.new(publisher_params)
        
        if @publisher.save
            redirect_to @publisher
        else
            render 'new'
        end
    end
    
    def show
        @publisher = Publisher.find(params[:id])
    end

    def edit
        @publisher = Publisher.find(params[:id])
    end

    def update
        @publisher = Publisher.find(params[:id])
        @publisher.update(publisher_params)

        redirect_to @publisher
    end

    def index
        @publishers = Publisher.all
    end

    def destroy
        @publisher = Publisher.find(params[:id])
        @publisher.destroy
    
        redirect_to publishers_path
    end

    private def publisher_params
        params.require(:publisher).permit(:name, :cellphone, :neighborhood, :email, :group_id, :macroregion_id)
    end

end

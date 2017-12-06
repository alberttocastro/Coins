class GroupsController < ApplicationController

    def new   
        @group = Group.new
    end

    def create
        @group = Group.new(groups_params)
        
        if @group.save
            redirect_to @group
        else
            render 'new'
        end
    end
    
    def show
        @group = Group.find(params[:id])
    end

    def edit
        @group = Group.find(params[:id])
    end

    def update
        @group = Group.find(params[:id])
        @group.update(groups_params)

        redirect_to @group
    end

    def index
        @groups = Group.all
    end

    def destroy
        @group = Group.find(params[:id])
        @group.destroy
    
        redirect_to groups_path
    end

    private def groups_params
        params.require(:group).permit(:number, :conductor, :helper)
    end

end

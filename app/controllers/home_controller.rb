class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:cultures, :characteristics]
  def index
    render "index"
  end

  def overview
    render "overview"
  end

  def assignments
    render "assignments"
  end

  def login
    
  end

  def view
    @address = Address.find(params[:address_id].to_i)
  end

  def help
    
  end

  def management
    
  end

  def edit
    
  end
  
end


  # def cultures
  #   @nationalities = Nationality.all
  #   @idioms = Idiom.all
  # end

  # def characteristics
  #   @macroregions = Macroregion.all
  #   @adrstypes = Adrstype.all
  # end
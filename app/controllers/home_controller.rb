class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:cultures, :characteristics]
  def index
    render "index"
  end

  def overview
    render "overview"
  end

  def assignments
    @working_cards = Card.working_cards
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

  def declare_concluded
    
    @param = params.permit(:id)
    Assignment.find(@param[:id]).declare_concluded

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
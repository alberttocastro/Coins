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

  end

  def help
    
  end

  def management
    
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
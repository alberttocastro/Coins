class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:cultures, :characteristics]
  def index
    @navbar = "partials/navbar/navbar-home"
    render "index"
  end

  def overview
    @navbar = "partials/navbar/navbar-overview"
    render "overview"
  end

  def assignments
    @navbar = "partials/navbar/navbar-assignments"
    render "assignments"
  end

  def login
    
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
class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:cultures, :characteristics]
  def index
    @navbar = "partials/navbar-home"
    render "index"
  end

  def overview
    @navbar = "partials/navbar-overview"
    render "overview"
  end

  def assignments
    @navbar = "partials/navbar-assignments"
    render "assignments"
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
class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:cultures, :characteristics]
  def index
  end

  def cultures
    @nationalities = Nationality.all
    @idioms = Idiom.all
  end

  def characteristics
    @macroregions = Macroregion.all
    @adrstypes = Adrstype.all
  end
  
end

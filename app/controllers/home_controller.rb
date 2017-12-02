class HomeController < ApplicationController
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

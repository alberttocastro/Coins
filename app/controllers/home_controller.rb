class HomeController < ApplicationController
  def index
  end

  def cultures
    @nationalities = Nationality.all
    @idioms = Idiom.all
  end
end

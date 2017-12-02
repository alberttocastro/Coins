class HomeController < ApplicationController
  def index
  end

  def cultures
    @nationalities = Nationality.all
  end
end

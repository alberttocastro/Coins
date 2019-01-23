class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:cultures, :characteristics]
  def home
  end

  def login
    
  end

  def view
    @address = Address.find(params[:address_id].to_i)
  end

  def edit
    
  end

  def declare_concluded
    
    @param = params.permit(:id)
    Assignment.find(@param[:id]).declare_concluded

  end
  
  # Cria um SuggestedAddress
  def create_suggested_address
    
    @params = params.permit(:neighborhood, :street, :name, :comments)
    
    SuggestedAddress.create(@params)

    redirect_to home_path
  end
  
  
end
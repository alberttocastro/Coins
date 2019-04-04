class ManagementController < ApplicationController

  def management
  end

  # Ação para incluir uma sugestão de endereço como endereço no banco de dados
  def accept_suggestion
    @params = params.permit(:id, :street, :neighborhood, :name, :comments, :adrstype_id, :card_id, :group_id, :macroregion_id, :utf8, :authenticity_token, :commit)

    # Remove o "id" da hash e criar um endereço com o restante.
    # Caso a criação do endereço funcione, destroi o endereço sugerido
    @created = Address.new(@params.except(:id, :utf8, :authenticity_token, :commit))
    if @created.save
      SuggestedAddress.find(@params[:id]).destroy
    end

    puts @created.errors.messages

    redirect_to management_path
  end
  
  def add_address_to_card
    params.permit(:utf8, :authenticity_token, :address_id, :card_id, :commit)

    @address = Address.find(params[:address_id])
    @address.update(card_id: params[:card_id])
    
    puts @address.errors.messages

    redirect_to management_path
  end

end

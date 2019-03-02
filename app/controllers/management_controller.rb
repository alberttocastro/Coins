class ManagementController < ApplicationController

  def management
  end

  # Ação para incluir uma sugestão de endereço como endereço no banco de dados
  def accept_suggestion
    @params = params.permit(:id, :street, :neighborhood, :name, :comments, :utf8, :authenticity_token, :commit)

    # Remove o "id" da hash e criar um endereço com o restante.
    # Caso a criação do endereço funcione, destroi o endereço sugerido
    if Address.create(@params.except(:id, :utf8, :authenticity_token, :commit))
      SuggestedAddress.find(@params[:id]).destroy
    end

    redirect_to management_path
  end

end

require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  test "deve retornar publicadores que nao estao associados com usuarios" do 
    @answer = true
    Publisher.without_user.each do |publisher|
      User.where(publisher_id: publisher.id).length == 0 ? @answer = @answer && true : @answer = false
    end

    assert(@answer, "Retorna publicador que já está associado")

    # TODO: Criar teste que enviar o id do publicador que está associado a um usuário, e retorna ele como primeiro, depois retorna todos os outros que não tem usuário associado
  end


end

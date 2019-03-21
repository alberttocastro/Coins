require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  test "deve retornar publicadores que nao estao associados com usuarios" do 
    @answer = true
    Publisher.without_user.each do |publisher|
      User.where(publisher_id: publisher.id) == 0 ? @answer = @answer && true : @answer = false
    end

    assert(@answer, "Retorna publicador que já está associado")
  end
end

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test 'retorna os enderecos para nao bater' do
    # TODO: fazer o teste 
  end
  
  test 'retorna se o endereco ja foi feito' do
    # TODO: fazer o teste 
  end

  test 'cria endereço sem card' do
    @address = Address.new(neighborhood: "Bairro", street:"Rua tal", name:"Nome da pessoa", is_valid?: true, is_visitable?: true, frequence:1, adrstype: Adrstype.first, macroregion: Macroregion.first, group: Group.first)

    assert(@address.save, "Cartão não está sendo criado sem card")
  end
end

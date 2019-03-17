require "application_system_test_case"

class UserApprovalsTest < ApplicationSystemTestCase
  test "deve aceitar usuario associando como publicador" do
    @user = User.create(email: Faker::Internet.email, password: "123456")
    @group = Group.create(number: rand(100), conductor: rand(100), helper: rand(100))
    @macroregion = Macroregion.create(macroreg: Faker::Address.street_name)
    @publisher = Publisher.create(macroregion: @macroregion, group: @group, name: Faker::Name.name, email:Faker::Internet.email, neighborhood: Faker::Address.street_name, cellphone: rand(100).to_s)
    visit permission_management_url
  
    assert_selector "h3.email", text: @user.email
    @publisher.destroy
    @macroregion.destroy
    @group.destroy
    @user.destroy
  end
end

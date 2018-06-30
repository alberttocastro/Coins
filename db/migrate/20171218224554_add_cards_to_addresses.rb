class AddCardsToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :card_number, :integer
  end
end

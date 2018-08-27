class AddFrequenceToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :frequence, :integer
  end
end

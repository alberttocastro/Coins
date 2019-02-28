class AddressAvailability < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :isvalid, :boolean
    add_column :addresses, :isvisitable, :boolean
    add_column :addresses, :isvisited, :boolean
  end
end

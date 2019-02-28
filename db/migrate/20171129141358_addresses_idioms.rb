class AddressesIdioms < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses_idioms do |t|
      t.belongs_to :idiom, index: true
      t.belongs_to :address, index: true
    end
  end
end

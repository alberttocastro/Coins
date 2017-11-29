class CreateTelephones < ActiveRecord::Migration[5.1]
  def change
    create_table :telephones do |t|
      t.integer :address_id
      t.string :number
      t.string :name

      t.timestamps
    end
  end
end

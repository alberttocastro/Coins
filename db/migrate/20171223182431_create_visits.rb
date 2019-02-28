class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.integer :address_id
      t.integer :publisher_id
      t.datetime :date
      t.text :comment

      t.timestamps
    end
  end
end

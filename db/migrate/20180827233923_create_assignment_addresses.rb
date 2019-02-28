class CreateAssignmentAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :assignment_addresses do |t|
      t.integer :address_id
      t.integer :assignment_id

      t.timestamps
    end
  end
end

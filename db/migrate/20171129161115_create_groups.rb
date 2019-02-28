class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.integer :number
      t.integer :conductor
      t.integer :helper

      t.timestamps
    end
  end
end

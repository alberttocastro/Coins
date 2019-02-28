class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end

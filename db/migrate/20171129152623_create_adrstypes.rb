class CreateAdrstypes < ActiveRecord::Migration[5.1]
  def change
    create_table :adrstypes do |t|
      t.string :type

      t.timestamps
    end
  end
end

class CreateHelps < ActiveRecord::Migration[5.1]
  def change
    create_table :helps do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end

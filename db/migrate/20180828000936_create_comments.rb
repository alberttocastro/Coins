class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :address_id
      t.text :comment
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end

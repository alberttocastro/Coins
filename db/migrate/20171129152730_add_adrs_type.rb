class AddAdrsType < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :adrstype_id, :integer
  end
end

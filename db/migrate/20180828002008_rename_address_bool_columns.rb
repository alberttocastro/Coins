class RenameAddressBoolColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :isvalid, :is_valid?
    rename_column :addresses, :isvisitable, :is_visitable?
    rename_column :addresses, :isvisited, :is_visited?
  end
end

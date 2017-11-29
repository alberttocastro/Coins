class AddMacroregionToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :macroregion_id, :integer
  end
end

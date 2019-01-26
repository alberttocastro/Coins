class AddMacroregionIdToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :macroregion_id, :integer
  end
end

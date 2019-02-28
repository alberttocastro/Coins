class CreateMacroregions < ActiveRecord::Migration[5.1]
  def change
    create_table :macroregions do |t|
      t.string :macroreg

      t.timestamps
    end
  end
end

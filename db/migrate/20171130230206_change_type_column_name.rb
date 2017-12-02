class ChangeTypeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :adrstypes, :type, :typename
  end
end

class AddGroupAndMacregToPublisher < ActiveRecord::Migration[5.1]
  def change
    add_column :publishers, :macroregion_id, :integer
    add_column :publishers, :group_id, :integer
  end
end

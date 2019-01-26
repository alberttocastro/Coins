class RemoveIsVisitedFromAddresses < ActiveRecord::Migration[5.1]
  def change
    remove_column :addresses, :is_visited?
  end
end

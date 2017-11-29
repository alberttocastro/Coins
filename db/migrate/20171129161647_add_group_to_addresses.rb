class AddGroupToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :group_id, :integer
  end
end

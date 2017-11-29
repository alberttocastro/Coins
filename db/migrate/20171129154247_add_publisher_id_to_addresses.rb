class AddPublisherIdToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :publisher_id, :integer
  end
end

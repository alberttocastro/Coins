class AddUserTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userType, :integer
  end
end

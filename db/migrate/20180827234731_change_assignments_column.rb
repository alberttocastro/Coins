class ChangeAssignmentsColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :assignments, :address_id, :card_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

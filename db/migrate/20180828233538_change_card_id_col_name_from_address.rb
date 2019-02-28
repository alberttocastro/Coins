class ChangeCardIdColNameFromAddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :card_number, :card_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

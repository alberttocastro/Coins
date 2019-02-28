class ChangeDateVisitType < ActiveRecord::Migration[5.1]
  def change
    change_column :visits, :date, :date
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end

class AddSecondLanguage < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :second_language, :integer
  end
end

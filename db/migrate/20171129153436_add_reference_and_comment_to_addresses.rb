class AddReferenceAndCommentToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :comments, :text
    add_column :addresses, :references, :text
  end
end

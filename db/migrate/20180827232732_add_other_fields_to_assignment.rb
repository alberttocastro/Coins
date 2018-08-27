class AddOtherFieldsToAssignment < ActiveRecord::Migration[5.1]
  def change
    # Adição da data de conclusão. Se estiver vazia, automaticamente é pq não foi concluido
    add_column :assignments, :date, :date
  end
end

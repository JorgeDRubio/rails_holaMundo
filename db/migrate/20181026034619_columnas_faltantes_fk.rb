class ColumnasFaltantesFk < ActiveRecord::Migration[5.2]
  def change
    add_column :ordenes, :client_id, :integer
    #add_column :detalle_ordens, :ordene_id, :integer
    #add_column :detalle_ordens, :producto_id, :integer
  end
end
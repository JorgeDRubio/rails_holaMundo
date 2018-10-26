class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :rfc
      t.string :nombre_cliente

      t.timestamps
    end
  end
end

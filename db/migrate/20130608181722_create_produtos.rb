class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :tamanho
      t.string :peso
      t.integer :tipocarga_id
      t.text :descricao
      t.integer :idUser
      t.integer :idEntrega

      t.timestamps
    end
  end
end

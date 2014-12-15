class AddPrecoToEntrega < ActiveRecord::Migration
   def change
    add_column :entregas, :preco, :string
  end
end

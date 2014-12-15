class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :marca
      t.string :modelo
      t.string :ano
      t.string :cor
      t.string :placa
      t.integer :idUser
      t.integer :idRota

      t.timestamps
    end
  end
end

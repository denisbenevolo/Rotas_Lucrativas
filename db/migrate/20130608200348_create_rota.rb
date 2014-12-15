class CreateRota < ActiveRecord::Migration
  def change
    create_table :rota do |t|
      t.string :origem
      t.string :destino
      t.date :data
      t.time :horario
      t.float :latitude
      t.float :longitude
      t.integer :idUser
      t.integer :idCarro
      t.boolean :gmaps

      t.timestamps
    end
  end
end

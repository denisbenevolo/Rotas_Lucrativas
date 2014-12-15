class CreateEntregas < ActiveRecord::Migration
  def change
    create_table :entregas do |t|
      t.string :origem
      t.string :destino
      t.date :data
      t.string :statusentrega
      t.integer :idUser
      t.integer :idMotorista

      t.timestamps
    end
  end
end

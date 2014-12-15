class CreateTipocargas < ActiveRecord::Migration
  def change
    create_table :tipocargas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end

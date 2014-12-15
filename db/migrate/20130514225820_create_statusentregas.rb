class CreateStatusentregas < ActiveRecord::Migration
  def change
    create_table :statusentregas do |t|
      t.string :status

      t.timestamps
    end
  end
end

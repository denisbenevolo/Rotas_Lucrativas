class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :sobrenome
      t.string :telefone
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end

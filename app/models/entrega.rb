class Entrega < ActiveRecord::Base
  attr_accessible :data, :destino, :idUser, :idMotorista, :origem, :statusentrega, :preco

  
end

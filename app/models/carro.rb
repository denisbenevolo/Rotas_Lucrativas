class Carro < ActiveRecord::Base
  attr_accessible :ano, :cor, :idRota, :idUser, :marca, :modelo, :placa, :photo

  has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }
end

class Produto < ActiveRecord::Base
  belongs_to :tipocarga
  attr_accessible :descricao, :idEntrega, :idUser, :peso, :tamanho, :tipocarga_id, :photo
	
 has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "200x200>",
    :large =>   "400x400>" }
    
end

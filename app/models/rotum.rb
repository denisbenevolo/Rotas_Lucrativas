class Rotum < ActiveRecord::Base
  attr_accessible :data, :horario, :destino, :origem, :latitude, :longitude, :gmaps, :idUser, :idCarro
  acts_as_gmappable

  def gmaps4rails_address
  "#{origem}, #{destino}"
end

  def self.search(search)
    if search
     find(:all, :conditions => ['"destino" LIKE ?', "%#{search}%"])
    else
     find(:all)
    end
  end
  
  
  
end

class RecusarController < ApplicationController
  def delete
  @entrega = Entrega.find(getRecusar)
  @entrega.statusentrega = "8"
  @entrega.save
  redirect_to produtos_path
  end
end

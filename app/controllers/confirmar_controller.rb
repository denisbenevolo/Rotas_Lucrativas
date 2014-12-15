class ConfirmarController < ApplicationController
  def confirm
 	 @entrega = Entrega.find(getConfirmar)
  	 @entrega.statusentrega = "3"
  	 @entrega.save
  	 redirect_to produtos_path
  end

end

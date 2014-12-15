module ConfirmarHelper
	def confirm
 	 @entrega = Entrega.find(47)
  	 @entrega.statusentrega = "3"
  	 @entrega.save
  	 redirect_to produtos_path
  end
end

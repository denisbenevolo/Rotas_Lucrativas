class ApplicationController < ActionController::Base
 protect_from_forgery
helper_method :current_user, :setMotorista, :getMotorista, :contar, :setEntrega, :getOrigem, :getDestino, :getData, :setRota, :getRota, :setAux, :getAux, :confirmar,:recusar, :getConfirmar, :getRecusar

$idMotorista = nil
$origem = nil
$destino = nil
$data = nil
$idRota = nil
$preco = nil
$confirmar = nil
$recusar = nil

private
$numEntregas = 0
def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def setMotorista(id)
	$idMotorista = id
end

def getMotorista
	$idMotorista
end

def contar
	$numEntregas = 0
	@entrega = Entrega.all
	@entrega.each do |entrega| if current_user.id==entrega.idMotorista && entrega.statusentrega!="2"
		$numEntregas+=1
	end
end
	return $numEntregas

end

def setEntrega(origem,destino,data)
	$origem = origem
	$destino = destino
	$data = data
end

def getOrigem
	$origem
end

def getDestino
	$destino
end

def getData
	$data
end

def setRota(id)
	$idRota = id
end

def getRota
	$idRota
end

def setAux
	$preco = 1
end

def getAux
	if $preco == 1
		$preco == nil
		return 1
	else
		return nil
	end
end

def confirmar(id)
  $confirmar=id
end

def getConfirmar
	return $confirmar
end

def recusar(id)
 	$recusar = id 
end

def getRecusar
	return $recusar
end

end

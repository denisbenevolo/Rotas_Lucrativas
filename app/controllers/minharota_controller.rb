class MinharotaController < ApplicationController
  def index
	@rota = Rotum.all
  end
end

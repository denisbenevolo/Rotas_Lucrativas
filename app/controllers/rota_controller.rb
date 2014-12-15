class RotaController < ApplicationController
  # GET /rota
  # GET /rota.json
  def index
    @rota = Rotum.search(params[:search])
	  @json = @rota.to_gmaps4rails
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @rota }
    end
  end

  # GET /rota/1
  # GET /rota/1.json
  def show
    @rotum = Rotum.find(params[:id])
    setRota(@rotum.id)
    setEntrega(@rotum.origem,@rotum.destino,@rotum.data)
    @json = @rotum.to_gmaps4rails 
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @rotum }
    end
  end

  # GET /rota/new
  # GET /rota/new.json
  def new
    @rotum = Rotum.new
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @rotum }
    end
  end

  # GET /rota/1/edit
  def edit
    @rotum = Rotum.find(params[:id])
  end

  # POST /rota
  # POST /rota.json
  def create
    @rotum = Rotum.new(params[:rotum])
	  @rotum.idUser = current_user.id
    respond_to do |format|
      if @rotum.save
        format.html { redirect_to @rotum, :notice => 'Rota Cadastrada com sucesso.' }
        format.json { render :json => @rotum, :status => :created, :location => @rotum }
      else
        format.html { render :action => "new" }
        format.json { render :json => @rotum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rota/1
  # PUT /rota/1.json
  def update
    @rotum = Rotum.find(params[:id])

    respond_to do |format|
      if @rotum.update_attributes(params[:rotum])
        format.html { redirect_to @rotum, :notice => 'Rotum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @rotum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rota/1
  # DELETE /rota/1.json
  def destroy
    @rotum = Rotum.find(params[:id])
    @rotum.destroy

    respond_to do |format|
      format.html { redirect_to rota_url }
      format.json { head :no_content }
    end
  end
end

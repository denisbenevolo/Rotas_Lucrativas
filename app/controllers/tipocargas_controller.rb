class TipocargasController < ApplicationController
  # GET /tipocargas
  # GET /tipocargas.json
  def index
    @tipocargas = Tipocarga.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tipocargas }
    end
  end

  # GET /tipocargas/1
  # GET /tipocargas/1.json
  def show
    @tipocarga = Tipocarga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tipocarga }
    end
  end

  # GET /tipocargas/new
  # GET /tipocargas/new.json
  def new
    @tipocarga = Tipocarga.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tipocarga }
    end
  end

  # GET /tipocargas/1/edit
  def edit
    @tipocarga = Tipocarga.find(params[:id])
  end

  # POST /tipocargas
  # POST /tipocargas.json
  def create
    @tipocarga = Tipocarga.new(params[:tipocarga])

    respond_to do |format|
      if @tipocarga.save
        format.html { redirect_to @tipocarga, :notice => 'Tipocarga was successfully created.' }
        format.json { render :json => @tipocarga, :status => :created, :location => @tipocarga }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tipocarga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipocargas/1
  # PUT /tipocargas/1.json
  def update
    @tipocarga = Tipocarga.find(params[:id])

    respond_to do |format|
      if @tipocarga.update_attributes(params[:tipocarga])
        format.html { redirect_to @tipocarga, :notice => 'Tipocarga was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tipocarga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipocargas/1
  # DELETE /tipocargas/1.json
  def destroy
    @tipocarga = Tipocarga.find(params[:id])
    @tipocarga.destroy

    respond_to do |format|
      format.html { redirect_to tipocargas_url }
      format.json { head :no_content }
    end
  end
end

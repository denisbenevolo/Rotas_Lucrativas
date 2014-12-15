class StatusentregasController < ApplicationController
  # GET /statusentregas
  # GET /statusentregas.json
  def index
    @statusentregas = Statusentrega.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @statusentregas }
    end
  end

  # GET /statusentregas/1
  # GET /statusentregas/1.json
  def show
    @statusentrega = Statusentrega.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @statusentrega }
    end
  end

  # GET /statusentregas/new
  # GET /statusentregas/new.json
  def new
    @statusentrega = Statusentrega.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @statusentrega }
    end
  end

  # GET /statusentregas/1/edit
  def edit
    @statusentrega = Statusentrega.find(params[:id])
  end

  # POST /statusentregas
  # POST /statusentregas.json
  def create
    @statusentrega = Statusentrega.new(params[:statusentrega])

    respond_to do |format|
      if @statusentrega.save
        format.html { redirect_to @statusentrega, :notice => 'Statusentrega was successfully created.' }
        format.json { render :json => @statusentrega, :status => :created, :location => @statusentrega }
      else
        format.html { render :action => "new" }
        format.json { render :json => @statusentrega.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /statusentregas/1
  # PUT /statusentregas/1.json
  def update
    @statusentrega = Statusentrega.find(params[:id])

    respond_to do |format|
      if @statusentrega.update_attributes(params[:statusentrega])
        format.html { redirect_to @statusentrega, :notice => 'Statusentrega was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @statusentrega.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /statusentregas/1
  # DELETE /statusentregas/1.json
  def destroy
    @statusentrega = Statusentrega.find(params[:id])
    @statusentrega.destroy

    respond_to do |format|
      format.html { redirect_to statusentregas_url }
      format.json { head :no_content }
    end
  end
end

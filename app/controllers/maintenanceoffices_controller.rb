class MaintenanceofficesController < ApplicationController
  # GET /maintenanceoffices
  # GET /maintenanceoffices.xml
  def index
    @maintenanceoffices = Maintenanceoffice.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @maintenanceoffices }
    end
  end

  # GET /maintenanceoffices/1
  # GET /maintenanceoffices/1.xml
  def show
    @maintenanceoffice = Maintenanceoffice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @maintenanceoffice }
    end
  end

  # GET /maintenanceoffices/new
  # GET /maintenanceoffices/new.xml
  def new
    @maintenanceoffice = Maintenanceoffice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @maintenanceoffice }
    end
  end

  # GET /maintenanceoffices/1/edit
  def edit
    @maintenanceoffice = Maintenanceoffice.find(params[:id])
  end

  # POST /maintenanceoffices
  # POST /maintenanceoffices.xml
  def create
    @maintenanceoffice = Maintenanceoffice.new(params[:maintenanceoffice])

    respond_to do |format|
      if @maintenanceoffice.save
        flash[:notice] = 'Maintenanceoffice was successfully created.'
        format.html { redirect_to(@maintenanceoffice) }
        format.xml  { render :xml => @maintenanceoffice, :status => :created, :location => @maintenanceoffice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @maintenanceoffice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /maintenanceoffices/1
  # PUT /maintenanceoffices/1.xml
  def update
    @maintenanceoffice = Maintenanceoffice.find(params[:id])

    respond_to do |format|
      if @maintenanceoffice.update_attributes(params[:maintenanceoffice])
        flash[:notice] = 'Maintenanceoffice was successfully updated.'
        format.html { redirect_to(@maintenanceoffice) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @maintenanceoffice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenanceoffices/1
  # DELETE /maintenanceoffices/1.xml
  def destroy
    @maintenanceoffice = Maintenanceoffice.find(params[:id])
    @maintenanceoffice.destroy

    respond_to do |format|
      format.html { redirect_to(maintenanceoffices_url) }
      format.xml  { head :ok }
    end
  end
end

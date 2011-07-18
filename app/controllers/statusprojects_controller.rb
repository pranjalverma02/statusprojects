class StatusprojectsController < ApplicationController
  # GET /statusprojects
  # GET /statusprojects.xml
  def index
    @statusprojects = Statusproject.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @statusprojects }
    end
  end

  # GET /statusprojects/1
  # GET /statusprojects/1.xml
  def show
    @statusproject = Statusproject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @statusproject }
    end
  end

  # GET /statusprojects/new
  # GET /statusprojects/new.xml
  def new
    @statusproject = Statusproject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @statusproject }
    end
  end

  # GET /statusprojects/1/edit
  def edit
    @statusproject = Statusproject.find(params[:id])
  end

  # POST /statusprojects
  # POST /statusprojects.xml
  def create
    @statusproject = Statusproject.new(params[:statusproject])

    respond_to do |format|
      if @statusproject.save
        flash[:notice] = 'Statusproject was successfully created.'
        format.html { redirect_to(@statusproject) }
        format.xml  { render :xml => @statusproject, :status => :created, :location => @statusproject }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @statusproject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /statusprojects/1
  # PUT /statusprojects/1.xml
  def update
    @statusproject = Statusproject.find(params[:id])

    respond_to do |format|
      if @statusproject.update_attributes(params[:statusproject])
        flash[:notice] = 'Statusproject was successfully updated.'
        format.html { redirect_to(@statusproject) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @statusproject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /statusprojects/1
  # DELETE /statusprojects/1.xml
  def destroy
    @statusproject = Statusproject.find(params[:id])
    @statusproject.destroy

    respond_to do |format|
      format.html { redirect_to(statusprojects_url) }
      format.xml  { head :ok }
    end
  end
end

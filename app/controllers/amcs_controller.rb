class AmcsController < ApplicationController
  # GET /amcs
  # GET /amcs.xml
  def index
    @amcs = Amc.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @amcs }
    end
  end

  # GET /amcs/1
  # GET /amcs/1.xml
  def show
    @amc = Amc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @amc }
    end
  end

  # GET /amcs/new
  # GET /amcs/new.xml
  def new
    @amc = Amc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @amc }
    end
  end

  # GET /amcs/1/edit
  def edit
    @amc = Amc.find(params[:id])
  end

  # POST /amcs
  # POST /amcs.xml
  def create
    @amc = Amc.new(params[:amc])

    respond_to do |format|
      if @amc.save
        flash[:notice] = 'Amc was successfully created.'
        format.html { redirect_to(@amc) }
        format.xml  { render :xml => @amc, :status => :created, :location => @amc }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @amc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /amcs/1
  # PUT /amcs/1.xml
  def update
    @amc = Amc.find(params[:id])

    respond_to do |format|
      if @amc.update_attributes(params[:amc])
        flash[:notice] = 'Amc was successfully updated.'
        format.html { redirect_to(@amc) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @amc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /amcs/1
  # DELETE /amcs/1.xml
  def destroy
    @amc = Amc.find(params[:id])
    @amc.destroy

    respond_to do |format|
      format.html { redirect_to(amcs_url) }
      format.xml  { head :ok }
    end
  end
end

class ItismgmtsController < ApplicationController
  # GET /itismgmts
  # GET /itismgmts.xml
  def index
    @itismgmts = Itismgmt.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itismgmts }
    end
  end

  # GET /itismgmts/1
  # GET /itismgmts/1.xml
  def show
    @itismgmt = Itismgmt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itismgmt }
    end
  end

  # GET /itismgmts/new
  # GET /itismgmts/new.xml
  def new
    @itismgmt = Itismgmt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itismgmt }
    end
  end

  # GET /itismgmts/1/edit
  def edit
    @itismgmt = Itismgmt.find(params[:id])
  end

  # POST /itismgmts
  # POST /itismgmts.xml
  def create
    @itismgmt = Itismgmt.new(params[:itismgmt])

    respond_to do |format|
      if @itismgmt.save
        flash[:notice] = 'Itismgmt was successfully created.'
        format.html { redirect_to(@itismgmt) }
        format.xml  { render :xml => @itismgmt, :status => :created, :location => @itismgmt }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itismgmt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itismgmts/1
  # PUT /itismgmts/1.xml
  def update
    @itismgmt = Itismgmt.find(params[:id])

    respond_to do |format|
      if @itismgmt.update_attributes(params[:itismgmt])
        flash[:notice] = 'Itismgmt was successfully updated.'
        format.html { redirect_to(@itismgmt) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itismgmt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itismgmts/1
  # DELETE /itismgmts/1.xml
  def destroy
    @itismgmt = Itismgmt.find(params[:id])
    @itismgmt.destroy

    respond_to do |format|
      format.html { redirect_to(itismgmts_url) }
      format.xml  { head :ok }
    end
  end
end

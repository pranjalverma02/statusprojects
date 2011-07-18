class ItismgmtfinalsController < ApplicationController
  # GET /itismgmtfinals
  # GET /itismgmtfinals.xml
  def index
    @itismgmtfinals = Itismgmtfinal.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itismgmtfinals }
    end
  end

  # GET /itismgmtfinals/1
  # GET /itismgmtfinals/1.xml
  def show
    @itismgmtfinal = Itismgmtfinal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itismgmtfinal }
    end
  end

  # GET /itismgmtfinals/new
  # GET /itismgmtfinals/new.xml
  def new
    @itismgmtfinal = Itismgmtfinal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itismgmtfinal }
    end
  end

  # GET /itismgmtfinals/1/edit
  def edit
    @itismgmtfinal = Itismgmtfinal.find(params[:id])
  end

  # POST /itismgmtfinals
  # POST /itismgmtfinals.xml
  def create
    @itismgmtfinal = Itismgmtfinal.new(params[:itismgmtfinal])

    respond_to do |format|
      if @itismgmtfinal.save
        flash[:notice] = 'Itismgmtfinal was successfully created.'
        format.html { redirect_to(@itismgmtfinal) }
        format.xml  { render :xml => @itismgmtfinal, :status => :created, :location => @itismgmtfinal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itismgmtfinal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itismgmtfinals/1
  # PUT /itismgmtfinals/1.xml
  def update
    @itismgmtfinal = Itismgmtfinal.find(params[:id])

    respond_to do |format|
      if @itismgmtfinal.update_attributes(params[:itismgmtfinal])
        flash[:notice] = 'Itismgmtfinal was successfully updated.'
        format.html { redirect_to(@itismgmtfinal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itismgmtfinal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itismgmtfinals/1
  # DELETE /itismgmtfinals/1.xml
  def destroy
    @itismgmtfinal = Itismgmtfinal.find(params[:id])
    @itismgmtfinal.destroy

    respond_to do |format|
      format.html { redirect_to(itismgmtfinals_url) }
      format.xml  { head :ok }
    end
  end
end

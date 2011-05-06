class BagsController < ApplicationController
  # GET /bags
  # GET /bags.xml
  def index
    @bags = Bag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bags }
    end
  end

  # GET /bags/1
  # GET /bags/1.xml
  def show
    @bag = Bag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bag }
    end
  end

  # GET /bags/new
  # GET /bags/new.xml
  def new
    @bag = Bag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bag }
    end
  end

  # GET /bags/1/edit
  def edit
    @bag = Bag.find(params[:id])
  end

  # POST /bags
  # POST /bags.xml
  def create
    @bag = Bag.new(params[:bag])

    respond_to do |format|
      if @bag.save
        format.html { redirect_to(@bag, :notice => 'Bag was successfully created.') }
        format.xml  { render :xml => @bag, :status => :created, :location => @bag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bags/1
  # PUT /bags/1.xml
  def update
    @bag = Bag.find(params[:id])

    respond_to do |format|
      if @bag.update_attributes(params[:bag])
        format.html { redirect_to(@bag, :notice => 'Bag was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bags/1
  # DELETE /bags/1.xml
  def destroy
    @bag = Bag.find(params[:id])
    @bag.destroy

    respond_to do |format|
      format.html { redirect_to(bags_url) }
      format.xml  { head :ok }
    end
  end
end

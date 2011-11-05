class MisController < ApplicationController
  # GET /mis
  # GET /mis.json
  def index
    @mis = Mi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mis }
    end
  end

  # GET /mis/1
  # GET /mis/1.json
  def show
    @mi = Mi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mi }
    end
  end

  # GET /mis/new
  # GET /mis/new.json
  def new
    @mi = Mi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mi }
    end
  end

  # GET /mis/1/edit
  def edit
    @mi = Mi.find(params[:id])
  end

  # POST /mis
  # POST /mis.json
  def create
    @mi = Mi.new(params[:mi])

    respond_to do |format|
      if @mi.save
        format.html { redirect_to @mi, notice: 'Mi was successfully created.' }
        format.json { render json: @mi, status: :created, location: @mi }
      else
        format.html { render action: "new" }
        format.json { render json: @mi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mis/1
  # PUT /mis/1.json
  def update
    @mi = Mi.find(params[:id])

    respond_to do |format|
      if @mi.update_attributes(params[:mi])
        format.html { redirect_to @mi, notice: 'Mi was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mis/1
  # DELETE /mis/1.json
  def destroy
    @mi = Mi.find(params[:id])
    @mi.destroy

    respond_to do |format|
      format.html { redirect_to mis_url }
      format.json { head :ok }
    end
  end
end

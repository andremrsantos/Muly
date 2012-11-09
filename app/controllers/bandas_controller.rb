class BandasController < ApplicationController
  # GET /bandas
  # GET /bandas.json
  def index
    @bandas = Banda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bandas }
    end
  end

  # GET /bandas/1
  # GET /bandas/1.json
  def show
    @banda = Banda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @banda }
    end
  end

  # GET /bandas/new
  # GET /bandas/new.json
  def new
    @banda = Banda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @banda }
    end
  end

  # GET /bandas/1/edit
  def edit
    @banda = Banda.find(params[:id])
  end

  # POST /bandas
  # POST /bandas.json
  def create
    @banda = Banda.new(params[:banda])

    respond_to do |format|
      if @banda.save
        format.html { redirect_to @banda, notice: 'Banda was successfully created.' }
        format.json { render json: @banda, status: :created, location: @banda }
      else
        format.html { render action: "new" }
        format.json { render json: @banda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bandas/1
  # PUT /bandas/1.json
  def update
    @banda = Banda.find(params[:id])

    respond_to do |format|
      if @banda.update_attributes(params[:banda])
        format.html { redirect_to @banda, notice: 'Banda was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @banda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bandas/1
  # DELETE /bandas/1.json
  def destroy
    @banda = Banda.find(params[:id])
    @banda.destroy

    respond_to do |format|
      format.html { redirect_to bandas_url }
      format.json { head :no_content }
    end
  end
end

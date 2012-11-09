class FaixasController < ApplicationController
  # GET /faixas
  # GET /faixas.json
  def index
    @album = Album.find(params[:album_id])
    @faixas = @album.faixas

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faixas }
    end
  end

  # GET /faixas/1
  # GET /faixas/1.json
  def show
    @faixa = Faixa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @faixa }
    end
  end

  # GET /faixas/new
  # GET /faixas/new.json
  def new
    @album = Album.find(param[:album_id])
    @faixa = @album.faixas.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @faixa }
    end
  end

  # GET /faixas/1/edit
  def edit
    @faixa = Faixa.find(params[:id])
  end

  # POST /faixas
  # POST /faixas.json
  def create
    @album = Album.find(param[:album_id])
    @faixa = @album.faixas.build(params[:faixa])

    respond_to do |format|
      if @faixa.save
        format.html { redirect_to @faixa, notice: 'Faixa was successfully created.' }
        format.json { render json: @faixa, status: :created, location: @faixa }
      else
        format.html { render action: "new" }
        format.json { render json: @faixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /faixas/1
  # PUT /faixas/1.json
  def update
    @faixa = Faixa.find(params[:id])

    respond_to do |format|
      if @faixa.update_attributes(params[:faixa])
        format.html { redirect_to @faixa, notice: 'Faixa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @faixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faixas/1
  # DELETE /faixas/1.json
  def destroy
    @faixa = Faixa.find(params[:id])
    @album = @faixa.album
    @faixa.destroy

    respond_to do |format|
      format.html { redirect_to album_path(@album) }
      format.json { head :no_content }
    end
  end
end

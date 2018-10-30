class DetalleOrdenesController < ApplicationController
  before_action :set_detalle_ordene, only: [:show, :edit, :update, :destroy]

  # GET /detalle_ordenes
  # GET /detalle_ordenes.json
  def index
    @detalle_ordenes = DetalleOrdene.all
  end

  # GET /detalle_ordenes/1
  # GET /detalle_ordenes/1.json
  def show
  end

  # GET /detalle_ordenes/new
  def new
    @detalle_ordene = DetalleOrdene.new
  end

  # GET /detalle_ordenes/1/edit
  def edit
  end

  # POST /detalle_ordenes
  # POST /detalle_ordenes.json
  def create
    params [:detalle_ordene].permit
    @detalle_ordene = DetalleOrden.new( params[:detalle_ordene])
  

    respond_to do |format|
      if @detalle_ordene.save
        format.html { redirect_to @detalle_ordene, notice: 'Detalle ordene was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_ordene }
      else
        format.html { render :new }
        format.json { render json: @detalle_ordene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_ordenes/1
  # PATCH/PUT /detalle_ordenes/1.json
  def update
    respond_to do |format|
      if @detalle_ordene.update(detalle_ordene_params)
        format.html { redirect_to @detalle_ordene, notice: 'Detalle ordene was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_ordene }
      else
        format.html { render :edit }
        format.json { render json: @detalle_ordene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_ordenes/1
  # DELETE /detalle_ordenes/1.json
  def destroy
    @detalle_ordene.destroy
    respond_to do |format|
      format.html { redirect_to detalle_ordenes_url, notice: 'Detalle ordene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_ordene
      @detalle_ordene = DetalleOrdene.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_ordene_params
      params.require(:detalle_ordene).permit(:cantidad, :precio_venta)
    end
end

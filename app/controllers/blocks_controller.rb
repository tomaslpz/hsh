class BlocksController < ApplicationController
  before_action :set_block, only: [:show, :edit, :update, :destroy, :salir_subasta]

  # GET /blocks
  # GET /blocks.json
  def index
    @blocks = Block.all
  end

  # GET /blocks/1
  # GET /blocks/1.json
  def show
  end

  # GET /blocks/new
  def new
    @block = Block.new
  end

  # GET /blocks/1/edit
  def edit
  end

  # POST /blocks
  # POST /blocks.json
  def create
    @block = Block.new(block_params)

    respond_to do |format|
      if @block.save
        format.html { redirect_to @block, notice: 'El bloque fue creado correctamente.' }
        format.json { render :show, status: :created, location: @block }
      else
        format.html { render :new }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blocks/1
  # PATCH/PUT /blocks/1.json
  def update
    respond_to do |format|
      if @block.update(block_params)
        format.html { redirect_to @block, notice: 'El bloque fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @block }
      else
        format.html { redirect_to @block, notice: @block.errors.full_messages.first}
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blocks/1
  # DELETE /blocks/1.json
  def destroy
    @block.destroy
    respond_to do |format|
      format.html { redirect_to blocks_url, notice: 'Block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def salir_subasta
    @entrada = @block.entries.where(:user_id => params[:user_id]).first
    @pujas = @entrada.bids
    @pujas.each do |pujas|
      pujas.destroy
    end
    @entrada.destroy
    respond_to do |format|
      format.html { redirect_to @block, notice: 'Has salido de la subasta' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
	def set_block
		if (Residence.find_by_id(params[:residence_id]) != nil)
			@block = Block.where(:fecha => params[:fecha],
			:residence_id => params[:residence_id]).first_or_create do |bloque|
				bloque.precio = 0
				bloque.estado = 0
			end
		else
			@block = Block.find(params[:id])
		end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_params
      params.require(:block).permit(:fecha, :precio, :estado, :adjudicado, :residence_id)
    end
end

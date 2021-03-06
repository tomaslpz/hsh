class ResidencesController < ApplicationController

	before_action :set_residence, only: [:show, :edit, :update, :destroy]
	before_action :logged_in, only: [:edit, :update, :show, :destroy, :new]
	# GET /residences
	# GET /residences.json
	def index
		@residences = Residence.all
	end

	# GET /residences/1
	# GET /residences/1.json
	def show

	end

	# GET /residences/new
	def new
		@residence = Residence.new
	end

	# GET /residences/1/edit
	def edit
	end

	# POST /residences
	# POST /residences.json
	def create
		@residence = Residence.new(residence_params)

		respond_to do |format|
			if @residence.save
				format.html { redirect_to @residence, notice: 'La residencia se creo correctamente.' }
				format.json { render :show, status: :created, location: @residence }
			else
				format.html { render :new }
				format.json { render json: @residence.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /residences/1
	# PATCH/PUT /residences/1.json
	def update
		respond_to do |format|
			if @residence.update(residence_params)
				format.html { redirect_to @residence, notice: 'La residencia se actualizo correctamente.' }
				format.json { render :show, status: :ok, location: @residence }
			else
				format.html { render :edit }
				format.json { render json: @residence.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /residences/1
	# DELETE /residences/1.json
	def destroy
		@residence.blocks.each do |bloque|
			if bloque.estado != 0
				respond_to do |format|
					format.html { redirect_to @residence, notice: 'Existen subastas activas.' }
				end
				return
			end
		end
		@residence.destroy
		respond_to do |format|
			format.html { redirect_to residences_url, notice: 'Residence was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private

	def logged_in
		unless logged_in_user? || logged_in_admin?
			flash[:danger] = "Please log in."
			redirect_to login_url
		end
	end
	# Use callbacks to share common setup or constraints between actions.
	def set_residence
		@residence = Residence.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def residence_params
		params.require(:residence).permit(:nombre, :provincia, :partido, :ciudad, :direccion, :img_link, :desc)
	end
end

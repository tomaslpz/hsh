class EntriesController < ApplicationController

  def show

	@entry = Entry.find(params[:id])
	
  end

  def create

    @e = Entry.new
    @e.email = params[:entry][:email]
    @e.block_id = params[:entry][:block_id]
	if @e.save
		respond_to do |format|
			format.html { redirect_to Block.find(@e.block_id), notice: 'Participacion agregada con exito.' }
			format.json { head :no_content }
		end
	else
		respond_to do |format|
			format.html { redirect_to Block.find(@e.block_id), notice: 'Error' }
			format.json { head :no_content }
		end
	end
	
  end


  def new

  end
  
end

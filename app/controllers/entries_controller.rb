class EntriesController < ApplicationController

  def show

	@entry = Entry.find(params[:id])
	
  end

  def create

    @e = Entry.new(entry_params)
	if @e.save
		respond_to do |format|
			format.html { redirect_to Block.find(@e.block_id), notice: 'Participacion agregada con exito.' }
			format.json { head :no_content }
		end
	else
		respond_to do |format|
			format.html { redirect_to Block.find(@e.block_id), notice: @e.errors.full_messages.first }
			format.json { head :no_content }
		end
	end
	
  end


  def new

  end

  private

  def entry_params
	params.require(:entry).permit(:email, :user_id, :block_id)
  end
  
end

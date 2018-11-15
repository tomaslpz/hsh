class BidsController < ApplicationController

	def new
	end
  
	def create
  
		@bid = Bid.new
		@bid.valor = params[:bid][:valor]
		@bid.block_id = params[:bid][:block_id]
		@entry = Block.find(params[:bid][:block_id]).entries.where(:email => params[:email]).first

		if (@entry == nil)

			@entry = Entry.create(:email => params[:email], :block_id => params[:bid][:block_id])
			
		end

		@bid.entry_id = @entry.id

	  if @bid.save
		  respond_to do |format|
			  format.html { redirect_to Block.find(@bid.block_id), notice: 'Puja agregada con exito.' }
			  format.json { head :no_content }
		  end
	  else
		  respond_to do |format|
			  format.html { redirect_to Block.find(@bid.block_id), notice: @bid.errors.full_messages.first + @eee.ids.first.to_s }
			  format.json { head :no_content }
		  end
	  end
	  
	end

	def show
  
		@bid = Bid.find(params[:id])
		
	end
	
  end
  
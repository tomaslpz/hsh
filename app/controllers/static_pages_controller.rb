class StaticPagesController < ApplicationController

	def home
		@r = Residence.all.sample
		@hotsale = Block.where(:estado => 2, :adjudicado => nil).sample
	end

end

class StaticPagesController < ApplicationController

	def home
		@r = Residence.all
	end

end

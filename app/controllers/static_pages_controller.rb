class StaticPagesController < ApplicationController

	def home
		@r = Residence.last
	end

end

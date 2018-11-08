class StaticPagesController < ApplicationController

	def home
		@r = Residence.all.sample

	end

end

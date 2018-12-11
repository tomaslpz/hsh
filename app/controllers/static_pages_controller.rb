class StaticPagesController < ApplicationController

	before_action :check_login, only: [:buscar]

	def home

		@residencia = Residence.all.sample
		@hotsale = Block.where(:estado => 2, :adjudicado => nil).sample

	end

	def buscar

		@query = params[:query].downcase

		@residencias = Residence.where('lower(nombre) LIKE ?', '%' + @query + '%')
		@residencias += Residence.where('lower(provincia) LIKE ?', '%' + @query + '%') - @residencias
		@residencias += Residence.where('lower(partido) LIKE ?', '%' + @query + '%') - @residencias
		@residencias += Residence.where('lower(ciudad) LIKE ?', '%' + @query + '%')	- @residencias

		@subastas = []
		@hotsales = []

		@residencias.each do |residencia|

			@s = residencia.blocks.where(:estado => 1)
			@h = residencia.blocks.where(:estado => 2)

			@s.each do |subasta|
				@subastas.push(subasta)
			end

			@h.each do |hotsale|
				@hotsales.push(hotsale)
			end

		end

	end

	private

	def check_login
		unless logged_in_user? || logged_in_admin?
			redirect_to login_url
		end
	end

end

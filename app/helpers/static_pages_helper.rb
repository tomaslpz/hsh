module StaticPagesHelper

	def resaltar query, string
		if (query != '')
			@array = string.downcase.split(/(#{@query})/)
			@resultado = []
			@array.each do |s|
				if s === query
					@resultado.push('<span class="bg-warning p-0 m-0">' + s + '</span>')
				else
					@resultado.push(s)
				end
			end
			return @resultado.join('')
		else
			return string
		end
	end

end

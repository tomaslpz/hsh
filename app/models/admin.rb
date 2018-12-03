class Admin < ApplicationRecord
	validates :codigo,
  			presence: {presence: true, message:'no puede quedar en blanco'},
            length: {minimum: 8, message:'es demasiado corto.'},
            uniqueness: {uniqueness:true, message:'debe ser unico.'}
end

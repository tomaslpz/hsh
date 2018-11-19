class Residence < ApplicationRecord
	validates :nombre, presence:true,
	 		uniqueness: { value: true,
			message: 'El nombre ya fue utilizado'}

	has_many :blocks

end

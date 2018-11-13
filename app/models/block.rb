class Block < ApplicationRecord

	belongs_to :residence
	has_many :entries

end

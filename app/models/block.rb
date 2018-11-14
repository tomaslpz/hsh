class Block < ApplicationRecord

	belongs_to :residence
	has_many :entries

	validates :precio, numericality: { greater_than_or_equal_to: 0 }
end

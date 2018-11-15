class Block < ApplicationRecord

	belongs_to :residence
	has_many :entries
	has_many :bids

	validates :precio, numericality: { greater_than_or_equal_to: 0 }
end

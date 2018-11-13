class Entry < ApplicationRecord

	belongs_to :block
	has_many :bids

end

class Entry < ApplicationRecord

	before_save { self.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, length: { maximum: 255 },
				format: { with: VALID_EMAIL_REGEX },
				uniqueness: { scope: [:block_id], case_sensitive: false }

	belongs_to :block
	belongs_to :user
	has_many :bids

end

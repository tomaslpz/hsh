class Entry < ApplicationRecord
	
	before_save { self.email = email.downcase }


	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
										uniqueness: { case_sensitive: false }


	belongs_to :block
	has_many :bids

end

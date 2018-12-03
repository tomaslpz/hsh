class User < ApplicationRecord

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }

  validates :email, presence:   true, length: { maximum: 255 },
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  validates :apellido, presence: true, length: { maximum: 50}


  validates :dni, presence: true, length: { maximum: 8, minimum: 7}, uniqueness: true

  validates :numTarjeta, presence: true, length: { maximum: 16, minimum: 16 }

  validates :codTarjeta, presence: true, length: { maximum: 3, minimum: 3 }

  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true


  validates :birth_date, presence: true
  validate :validate_age

  has_many :entries
  has_many :bids
  has_one :user_configs

  has_secure_password

  private
    def validate_age
      if birth_date.present? && birth_date > 18.years.ago.to_date
        errors.add(:birth_date , 'Debes ser mayor de 18 años para registrarte.')
      end
    end
end

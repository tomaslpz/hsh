class Admin < ApplicationRecord
  validates :codigo, presence:true,
            length:{minimum: 8},
            uniqueness: true
end

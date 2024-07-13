class Day < ApplicationRecord
    has_many :dishes, dependent: :destroy
    has_many :treinos, dependent: :destroy
end

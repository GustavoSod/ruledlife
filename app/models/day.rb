class Day < ApplicationRecord
    has_many :dishes, dependent: :destroy
end

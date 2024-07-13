class Dish < ApplicationRecord
  belongs_to :user
  belongs_to :day

  validates :image, :title, :description, :calories, :day_id, presence: true

end

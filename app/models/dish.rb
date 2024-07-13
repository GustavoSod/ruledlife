class Dish < ApplicationRecord
  belongs_to :user
  belongs_to :day

  has_one_attached :image

  validates :title, :description, :calories, :day_id, presence: true

end

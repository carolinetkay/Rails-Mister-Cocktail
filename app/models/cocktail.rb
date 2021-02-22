class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true, length: { in: 3..200, too_long: '%{count} characters is the maximum allowed' }
  has_one_attached :photo
end

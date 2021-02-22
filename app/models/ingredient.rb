class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true, length: { maximum: 500, too_long: '%{count} characters is the maximum allowed' }
end

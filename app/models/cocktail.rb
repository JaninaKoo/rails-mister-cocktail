class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses #through comes after the child relation line


  validates :name, uniqueness: true, presence: true
end

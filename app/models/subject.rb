class Subject < ApplicationRecord
  has_many :klasses, dependent: :destroy
  has_many :instructors, through: :klasses, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end

class Subject < ApplicationRecord
  has_many :klasses
  has_many :instructors, through: :klasses
end

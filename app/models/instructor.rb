class Instructor < ApplicationRecord
  has_many :klasses
  has_many :subjects, through: :klasses
end

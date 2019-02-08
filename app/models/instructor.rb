class Instructor < ApplicationRecord
  has_many :klasses, dependent: :destroy
  has_many :subjects, through: :klasses, dependent: :destroy
end

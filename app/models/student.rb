class Student < ApplicationRecord
  has_many :reviews
  has_many :klasses, through: :reviews
end

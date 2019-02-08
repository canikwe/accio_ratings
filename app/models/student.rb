class Student < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :klasses, through: :reviews, dependent: :destroy
end

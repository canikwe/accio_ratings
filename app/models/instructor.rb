class Instructor < ApplicationRecord
  has_many :klasses, dependent: :destroy
  has_many :subjects, through: :klasses, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  def rating
    if !self.klasses.empty?
      rate = self.klasses.map {|k| k.average_overall}.select {|rating| rating.is_a?(Float)}
      (rate.inject(:+)) / (rate.length)
    end
  end
end

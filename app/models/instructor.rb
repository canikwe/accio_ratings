class Instructor < ApplicationRecord
  has_many :klasses, dependent: :destroy
  has_many :subjects, through: :klasses, dependent: :destroy

  def rating
    self.klasses.map {|k| k.average_overall}.inject(:+)
  end
end

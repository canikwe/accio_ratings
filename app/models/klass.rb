class Klass < ApplicationRecord
  belongs_to :subject
  belongs_to :instructor
  has_many :reviews, dependent: :destroy


  def average_overall
    overall = self.reviews.map {|r| r.overall}
    overall.inject(:+).to_f / overall.count
  end
end

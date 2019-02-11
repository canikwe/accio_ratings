class Klass < ApplicationRecord
  belongs_to :subject
  belongs_to :instructor
  has_many :reviews, dependent: :destroy


  def average_overall
    overall = self.reviews.map {|r| r.overall}
    overall.inject(:+).to_f / overall.count
  end

  def average_diff
    diff = self.reviews.map {|r| r.difficulty}
    diff.inject(:+).to_f / diff.count
  end

  def average_intr
    intr = self.reviews.map {|r| r.intrigue}
    intr.inject(:+).to_f / intr.count
  end

  def average_rec
    rec = self.reviews.map {|r| r.recommendation}
    rec.inject(:+).to_f / rec.count
  end


end

class Klass < ApplicationRecord
  belongs_to :subject
  belongs_to :instructor
  has_many :reviews, dependent: :destroy
  # accepts_nested_attributes_for :instructor
  # accepts_nested_attributes_for :subject


  def average_overall
    overall = self.reviews.map {|r| r.overall}
    if overall.empty?
      "--"
    else
      overall.inject(:+).to_f / overall.count
    end
  end

  def average_diff
    diff = self.reviews.map {|r| r.difficulty}
    if diff.empty?
      "--"
    else
    diff.inject(:+).to_f / diff.count
    end
  end

  def average_intr
    intr = self.reviews.map {|r| r.intrigue}
    if intr.empty?
      "--"
    else
      intr.inject(:+).to_f / intr.count
    end
  end

  def average_rec
    rec = self.reviews.map {|r| r.recommendation}
    if rec.empty?
      "--"
    else
      rec.inject(:+).to_f / rec.count
    end
  end


end

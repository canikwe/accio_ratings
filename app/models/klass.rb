class Klass < ApplicationRecord
  # Associations
  belongs_to :subject
  belongs_to :instructor
  has_many :reviews, dependent: :destroy

  # Validations
  # validates :year, :subject, :instructor, presence: true
  validates :instructor, uniqueness: {scope: [:subject, :year], message: "already has a class for this subject/year."}


  # Custom Methods
  def average_overall
    overall = self.reviews.map {|r| r.overall}
    if overall.empty?
      "--"
    else
      (overall.inject(:+).to_f / overall.count).round(2)
    end
  end

  def average_diff
    diff = self.reviews.map {|r| r.difficulty}
    if diff.empty?
      "--"
    else
    (diff.inject(:+).to_f / diff.count).round(2)
    end
  end

  def average_intr
    intr = self.reviews.map {|r| r.intrigue}
    if intr.empty?
      "--"
    else
      (intr.inject(:+).to_f / intr.count).round(2)
    end
  end

  def average_rec
    rec = self.reviews.map {|r| r.recommendation}
    if rec.empty?
      "--"
    else
      (rec.inject(:+).to_f / rec.count).round(2)
    end
  end

  def self.most_frequent
    self.all.sort_by {|klass| klass.reviews.length}[-3..-1].reverse
  end



end

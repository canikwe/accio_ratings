class Review < ApplicationRecord
  # Associations
  belongs_to :student
  belongs_to :klass

  # Validations
  validates :title, :overall, :difficulty, :intrigue, :recommendation, presence: true
  validates :content, presence: true, length: {minimum: 25, maximum: 300, message: "Reviews must be between 25 and 300 characters"}
  validates :student_id, uniqueness: {scope: :klass_id, message: "You have already reviewed this class"}

  # Custom Methods
  def self.recents
    self.all.order(created_at: :desc)[0,5]

  end

end

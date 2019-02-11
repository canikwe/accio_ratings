class Klass < ApplicationRecord
  belongs_to :subject
  belongs_to :instructor
  has_many :reviews, dependent: :destroy

end

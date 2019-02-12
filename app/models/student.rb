class Student < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :klasses, through: :reviews, dependent: :destroy
  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  
end

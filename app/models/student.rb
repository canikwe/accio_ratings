class Student < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :klasses, through: :reviews, dependent: :destroy
  validates :first_name, :last_name, :username, :grad_year, presence: true
  validates :first_name, length: {in: 1..15}
  validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :last_name, length: {in: 1..20}
  validates :last_name, format: { with: /\A[a-zA-Z\-]+\z/, message: "only allows letters and hyphens" }
  validates :username, length: {in: 3..15}
  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
  validates :password, presence: true, on: :create
  validates :password, length: {in: 4..20}, on: :create
  validates :grad_year, numericality: {only_integer: true}
  validates :grad_year, inclusion: {in: (1990..Time.now.year+10)}


  has_secure_password



  def full_name
    "#{self.first_name} #{self.last_name}"
  end


end

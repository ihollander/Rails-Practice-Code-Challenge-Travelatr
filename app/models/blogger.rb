class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts
  # unique names 
  validates :name, presence: true
  validates :name, uniqueness: true
  # ages above 0
  validates :age, presence: true
  validates :age, numericality: { greater_than: 0 }

  # bio should be over 30 characters long
  validates :bio, presence: true
  validates :bio, length: { minimum: 30 }

end

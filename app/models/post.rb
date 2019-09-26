class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination

  # A post should have a title
  validates :title, presence: true

  # A post should have content longer than 100 characters
  validates :content, length: { minimum: 100 }

end

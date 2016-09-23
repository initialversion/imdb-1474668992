class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, {scope: [:year, :director_id]}

  validates :title, presence: true

end

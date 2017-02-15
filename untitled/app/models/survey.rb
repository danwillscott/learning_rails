class Survey < ApplicationRecord
  validates :full_name, :comment, :favorite, :location, presence: true
end

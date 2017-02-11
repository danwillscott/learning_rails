class Dojo < ApplicationRecord
  validates :name, :city, presence: true
  validates :state , presence: true, length: { in: 2..2 }
end

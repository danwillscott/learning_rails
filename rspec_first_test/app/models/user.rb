class User < ApplicationRecord
  validates :name, :age, :pet_name, :pet_age, presence: true
end

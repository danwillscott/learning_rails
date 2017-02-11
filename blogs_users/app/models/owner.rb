class Owner < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  self
end


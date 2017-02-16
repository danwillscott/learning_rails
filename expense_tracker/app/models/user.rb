class User < ApplicationRecord
  has_many :expenses, dependent: :destroy, inverse_of: :user
  validates :name, :presence => true, uniqueness: true
  validates :budget, :numericality => { :only_integer => true }
  validates :budget, :numericality => { :greater_than => 100 }

end
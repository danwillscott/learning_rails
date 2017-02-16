class Expense < ApplicationRecord
  belongs_to :user
  validates :spent, :numericality => { :only_integer => true }
  validates :product, :presence => true
  validates :user, :presence => true
  validates_associated :user
end

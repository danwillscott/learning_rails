class Message < ApplicationRecord
  belongs_to :post
  validates :message, presence: true, length: {minimum: 15}
  validates :author, presence: true
end

class Post < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :blog
  validates :title, presence: true, length: {minimum: 7}
  validates :content, presence: true
end

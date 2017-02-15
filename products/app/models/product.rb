class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, :description, :price, :category, presence: true

  def self.new_product(data)
    Product.new(name: data[:name], category: data[:category],
                description: data[:description], price: data[:price])
  end

  def self.update_product(data)
    user = self.find(data[:id])
    if data[:name] > ''
      user.update(name:data[:name])
    end
    if data[:category] > ''
      user.update(category:data[:category])
    end
    if data[:description] > ''
      user.update(description:data[:description])
    end
    if data[:price] != nil
      if data[:price] > ''
        user.update(price:data[:price])
      end


    end
    user
  end


end

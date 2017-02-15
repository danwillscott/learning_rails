class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.float :price
      t.timestamps
    end
  end
end
#
# product1 = Product.create(name: 'cool car', description: 'A shiny red car!', category: 'auto', price: 5000)
#
# Comment.create(comment: 'how shiny and new is it?', product: product1)

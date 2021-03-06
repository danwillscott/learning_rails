class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :blog, index: true
      t.references :user, index: true
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end

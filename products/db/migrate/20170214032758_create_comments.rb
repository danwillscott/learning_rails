class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :product
      t.string :comment
      t.timestamps
    end
  end
end

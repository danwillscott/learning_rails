class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.references :user
      t.integer :spent
      t.string :product
      t.timestamps
    end
  end
end

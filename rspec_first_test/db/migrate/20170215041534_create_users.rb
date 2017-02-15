class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :pet_name
      t.integer :age
      t.integer :pet_age
      t.timestamps
    end
  end
end

class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.references  :user, index: true
      t.references  :blog, index: true
      t.timestamps
    end
  end
end

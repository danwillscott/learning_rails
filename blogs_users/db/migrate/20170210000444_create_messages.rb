class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :post, index: true
      t.references :user, index: true
      t.string :author
      t.text :message
      t.timestamps
    end
  end
end

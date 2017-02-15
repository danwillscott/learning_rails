class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :full_name
      t.string :comment
      t.string :location
      t.string :favorite
      t.timestamps
    end
  end
end

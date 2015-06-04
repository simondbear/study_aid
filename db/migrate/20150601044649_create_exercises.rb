class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.integer :difficulty
      t.belongs_to :subject

      t.timestamps null: false
    end
  end
end

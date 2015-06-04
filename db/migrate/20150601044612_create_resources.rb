class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.text :url
      t.text :content
      t.belongs_to :subject

      t.timestamps null: false
    end
  end
end

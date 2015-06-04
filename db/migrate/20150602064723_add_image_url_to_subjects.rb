class AddImageUrlToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :image_url, :text
  end
end

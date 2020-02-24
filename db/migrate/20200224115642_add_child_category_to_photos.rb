class AddChildCategoryToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_reference :photos, :child_category, null: false, foreign_key: true
  end
end

class AddParentcategoryidToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :parent_category_id, :bigInt
  end
end

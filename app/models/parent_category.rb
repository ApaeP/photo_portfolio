class ParentCategory < ApplicationRecord
  has_many :child_categories

  def photos(n = 10)
    Photo.where(child_category_id: child_categories).sample(n)
  end
end

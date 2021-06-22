class Photo < ApplicationRecord
  has_one_attached :photo
  belongs_to :child_category
  belongs_to :parent_category, foreign_key: :parent_category_id
end

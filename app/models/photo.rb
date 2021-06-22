class Photo < ApplicationRecord
  has_one_attached :photo
  belongs_to :child_category

  validates :parent_category_id, presence: true
end

class ChildCategory < ApplicationRecord
  belongs_to :parent_category
  has_many :photos
end

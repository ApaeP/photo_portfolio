class ChildCategory < ApplicationRecord
  include CategoryHelper

  belongs_to :parent_category
  has_many :photos
end

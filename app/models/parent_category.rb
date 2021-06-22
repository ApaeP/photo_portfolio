class ParentCategory < ApplicationRecord
  include CategoryHelper

  has_many :child_categories
end

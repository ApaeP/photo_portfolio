ActiveAdmin.register ChildCategory do
  menu priority: 30, label: 'Sous-Catégories'

  permit_params :title, :parent_category_id
end

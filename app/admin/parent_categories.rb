ActiveAdmin.register ParentCategory do
  menu priority: 20, label: 'Sur-Catégories'
  
  permit_params :title
end

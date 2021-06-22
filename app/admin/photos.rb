ActiveAdmin.register Photo do
  menu priority: 40, label: 'Photos'

  filter :parent_category_id, as: :check_boxes, collection: ParentCategory.all
  filter :child_category_id, as: :check_boxes, collection: ChildCategory.all

  controller do
    def create
      params[:photo][:parent_category_id] = ChildCategory.find(params[:photo][:child_category_id]).parent_category.id
      save_resource(build_resource)
      redirect_to admin_photos_path
    end
  end

  show do
    attributes_table do
      row :name
      row :description
      row :parent_category
      row :child_category
      row :photo do
        cl_image_tag(resource.photo.key, height: '300', crop: :fill) if resource.photo.attached?
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :child_category_id, as: :radio, collection: ChildCategory.all
      f.input :photo, as: :file
      div do
      end
    end
    f.actions
  end
  
  permit_params :name, :description, :child_category_id, :parent_category_id, :photo
end

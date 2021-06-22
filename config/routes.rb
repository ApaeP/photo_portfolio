Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  resources :parent_categories
  resources :child_categories do
    resources :photos
  end
end

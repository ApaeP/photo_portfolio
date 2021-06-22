Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :parent_categories do
    resources :child_categories do
      resources :photos
    end
  end
end

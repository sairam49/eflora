Rails.application.routes.draw do
  get 'products/new'
  get 'products/:id/edit', to: 'products#edit', as: 'products_edit'
  get 'products/index'
  post 'products/create'
  patch 'products/:id/update', to: 'products#update', as: 'products'
  delete 'products/:id', to: 'products#destroy', as: 'product'


  get 'services/new'
  get 'services/index'
  get 'services/:id/edit' , to: 'services#edit' , as: 'services_edit'
  post 'services/create'
  patch 'services/:id/update', to: 'services#update', as: 'services'
  delete 'services/:id', to: 'services#destroy', as: 'service'


  get 'dashboards/new'
  get 'dashboards/:id', to: 'dashboards#show', as: 'dashboard'
  get 'dashboards/:id/edit', to: 'dashboards#edit', as: 'dashboards_edit'
  post 'dashboards/create'
  patch 'dashboards/:id/update', to: 'dashboards#update', as: 'dashboards'

  get 'requests/new'
  get 'requests/index'
  post 'requests/create'

  get 'designs/new'
  post 'designs/show'

  root 'home#index'
  get 'home/list'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

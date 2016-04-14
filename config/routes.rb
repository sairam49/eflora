Rails.application.routes.draw do
  #post 'order_items/create'
  #patch 'order_items/:id/update', to: 'order_items#update' , as: 'order_items'
  #delete 'order_items/:id', to: 'order_items#destroy', as: 'order_item'
 # resources :order_items, only: [:create, :update, :destroy]

  #get 'carts/:id', to: 'carts#show' , as: 'carts'

  resource :cart, only: [:show] do
    post 'add_item'
    post 'remove_item'
    post  'update_item'
  end

  get 'agreements/new'
  post 'agreements/create'
  get 'agreements', to: 'agreements#index', as:'agreements'
  get 'agreements/received'

  get 'products/new'
  get 'products/:id/edit', to: 'products#edit', as: 'products_edit'
  get 'products', to: 'products#index', as: 'my_products'
  post 'products/create'
  patch 'products/:id/update', to: 'products#update', as: 'products'
  delete 'products/:id', to: 'products#destroy', as: 'product'


  get 'services/new'
  get 'services', to: 'services#index',as: 'my_services'
  get 'services/:id/edit' , to: 'services#edit' , as: 'services_edit'
  post 'services/create'
  patch 'services/:id/update', to: 'services#update', as: 'services'
  delete 'services/:id', to: 'services#destroy', as: 'service'


  get 'dashboards/new'
  get 'dashboards/:id', to: 'dashboards#show', as: 'dashboard'
  get 'dashboards/:id/products', to: 'dashboards#products', as: 'dashboards_products'
  get 'dashboards/:id/services', to: 'dashboards#services', as: 'dashboards_services'
  get 'dashboards/:id/edit', to: 'dashboards#edit', as: 'dashboards_edit'
  post 'dashboards/create'
  patch 'dashboards/:id/update', to: 'dashboards#update', as: 'dashboards'
  #get '/cart', to: 'dashboards#cart', as: 'cart'


  get 'requests/new'
  get '/requests' , to: 'requests#index', as: 'requests'
  get 'requests/:id', to: 'requests#show', as: 'request'
  post 'requests/create'

  post 'comments/create'

  get 'designs/new'
  post 'designs/show'

  root 'home#index'
  get '/horticulturists',to: 'home#list', as: 'horticulturists'

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

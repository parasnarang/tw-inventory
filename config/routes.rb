TwInventory::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'users#admin_dashboard'
  root 'users#employee_dashboard'
  get 'logout' => 'application#logout'

  get 'employee_dashboard' => 'users#employee_dashboard'#, :as => 'employee_dashboard_path'
  get 'admin_dashboard' => 'users#admin_dashboard'
  resources :asset_types do
    resources :assets, only: [:create, :new]
  end

  resources :admin, only: [:index]

  resources :assets, only: [:index, :show, :destroy] do
    resources :assignments
    collection do
      get 'sample_assets_csv'
      post 'import'
    end
  end

  resources :offices do
    post :create, :format => :json
  end
  get '/assets/clone/:id' => 'assets#clone', :as => :clone

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #get 'assets/sample_assets_csv' => 'assets#sample_assets_csv', :as => :sample_assets_csv
  #match 'assets/sample_assets_csv' => 'assets#sample_assets_csv', :via => :get

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
  #   namespace :users do
  #     # Directs /users/products/* to User::ProductsController
  #     # (app/controllers/users/products_controller.rb)
  #     resources :products
  #   end
end

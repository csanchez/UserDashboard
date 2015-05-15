Rails.application.routes.draw do

  get "welcome" => "welcome#index" 
  root "welcome#index"

  
  
  scope 'user',  module: 'user', as: 'user' do

    resources :dashboard , only: [:show]
  #  get 'dashboard' => 'dashboard#dashboard', :as => :dashboard
    
   
  #  post 'session/create' => 'session#create'
  end


  #resources 'users'

  #get 'new',     to: 'users#new'

  post 'create',     to: 'users#create',:as => :create_users

  get 'registro'     => 'users#new',:as => :new_users

  get  'login'    => 'session#new', :as => :login
  post 'logout'   => 'session#destroy', :as => :logout
  post 'session/create' => 'session#create'

  scope 'guest', module: 'guest', as: 'guest' do
  #  get 'show'    => 'guests#show'
  #  post 'create'  => 'guests#create'
  #  get 'registro'     => 'guests#new',:as => :new
  #
  #
    #get 'dashboard' => 'dashboard#dashboard' , :as => :dashboard, param: :slug
    resources :dashboard , only: [:show]
  #  get  'login'    => 'session#new', :as => :login
  #  post 'logout'   => 'session#destroy', :as => :logout
  #  post 'session/create' => 'session#create'
  end
  

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

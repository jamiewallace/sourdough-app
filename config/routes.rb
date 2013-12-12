SourdoughApp::Application.routes.draw do
  devise_for :users, controllers: {registrations: 'users'}


  devise_scope :user do
    authenticated do
      root to: 'users#index'
    end

    resources :users, only: [:index, :show]
    post '/search', to: 'users#search'
  end

  root to: 'welcome#index'
  get '/about/', to: 'welcome#about'

  # get '/users/new', to: 'users#new'
  # post '/users/', to: 'users#create'
  # get '/users/:id', to: 'users#show'
  # get '/users/', to: 'users#index'
  # get '/users/:id/edit', to: 'users#edit'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'


  # get '/messages/:id/    ', to: 'messages#new'
  # post '/messages/:id   ', to: 'messages#create'

  resources :images

  # get '/images/new', to: 'images#new'
  # post 'images/', to: 'images#create'
  # get '/images/:id', to: 'images#show'
  # get '/images/', to: 'images#index'
  # get '/images/:id/edit', to: 'images#edit'
  # put '/images/:id', to: 'images#update'
  # delete '/images/:id', to: 'images#destroy'


# high voltage for static pages


 
  # get '/contact/'
  # post '/contact/', to: ''




  # post '/location/search', to ''

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

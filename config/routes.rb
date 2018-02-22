Rails.application.routes.draw do
  get 'braintree/new'
  post 'braintree/checkout'

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create, :edit, :show] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  resources :listings
  resources :search, controller: "search", only: [:index]
  resources :bookings, controller: "bookings"
  
  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  root 'welcome#index'
  
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  
  get '/bookings/:id' => 'bookings#book', as: :book
  
  get '/bookings/:id/dates_confirmation' => 'bookings#dates_confirmation', as: :dates_confirmation
  
  get '/bookings/:id/book_check' => 'bookings#book_check', as: :book_check
  
  get '/bookings/:id/book_confirmation' => 'bookings#book_confirmation', as: :book_confirmation
  
  post '/bookings/:id/book_finalization' => 'bookings#book_finalization', as: :book_finalization

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

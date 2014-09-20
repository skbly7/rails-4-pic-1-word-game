Rails.application.routes.draw do
  
  resources :questions

  root :to => "sessions#login"
  get "new", :to => "sessions#new"
  get "login", :to => "sessions#login"
  get "logout", :to => "sessions#logout"
  get "home", :to => "sessions#home"
  get "profile", :to => "sessions#profile"
  get "setting", :to => "sessions#setting"
  get "play1", :to => "play#index1"
  get "play2", :to => "play#index2"
  get "play", :to => "play#index"
  get "play3", :to => "play#index3"
  get "mark1", :to => "play#mark1"
  get "mark2", :to => "play#mark2"
  get "mark3", :to => "play#mark3"
  get "share", :to => "sessions#share"
  get "edit_u", :to => "sessions#edit_u"
  get "edit_q", :to => "sessions#edit_q"
  get "tq", :to => "sessions#tq"
  get "quiz", :to => "sessions#quiz"
  get "sessions#index", :to => "sessions#login"
  get "index", :to => "sessions#login"
  get "changeUser", :to => "sessions#changeUser"
#  get "user/login_attempt", :to => "sessions/login_attempt"
  post "user/login_attempt", :to => "sessions#login_attempt"
  post "new", :to => "sessions#new"
  post "login", :to => "sessions#login"
  post "sessions#index", :to => "sessions#login"
  post "index", :to => "sessions#login"
  post "logout", :to => "sessions#logout"
  post "home", :to => "sessions#home"
  post "profile", :to => "sessions#profile"
  post "setting", :to => "sessions#setting"
  post "share", :to => "sessions#share"
  post "quiz", :to => "sessions#quiz"
  post "changeUser", :to => "sessions#changeUser"

  get 'user/new'
  get 'user/create'
  get ':controller(/:action(/:id))(.:format)'
  post ':controller(/:action(/:id))(.:format)'  
get 'auth/:provider/callback' => 'sessions#create'
 get 'auth/failure' => redirect('/')
 get 'signout' => 'sessions#destroy', as: 'signout'
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

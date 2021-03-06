GamePlan::Application.routes.draw do
  resources :challenge_completions

  resources :skills

  resources :completed_challenges

  resources :challenges

  resources :user_specific_gameplans

  resources :gameplans
  
  resources :users

  resources :organisations
  
  resource  :session,
    :controller => 'sessions',
    :only => [:new, :create, :destroy]

  root :to => 'Clearance::Sessions#new'
  
  match 'choose_challenges' => 'challenges#choose_challenges', :as => :choose_challenges
  match 'do_challenges' => 'challenges#do_challenges', :as => :do_challenges
  match 'submit_challenge' => 'challenges#submit_challenge', :as => :submit_challenge

  match '/sign_out' => 'sessions#destroy', :controller => 'sessions'
  match '/sign_in' => 'sessions#new', :controller => 'sessions'
  
  match '/take_challenge' => 'challenges#take_challenge', :as => :take_challenge
  
  match '/remove_challenge' => 'challenges#remove_challenge', :as => :remove_challenge
  
  
  
  
  

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
  # match ':controller(/:action(/:id(.:format)))'
end

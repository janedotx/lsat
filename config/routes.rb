Lsat::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  root :to => "application#index"
  
  match 'take_test' => 'lsat_test#take_test'
  match 'take_timed_test' => 'lsat_test#take_timed_test'
  match 'take_timed_section' => 'lsat_test#take_timed_section'
  match 'question_text_image/:id.jpeg' => 'question#question_text_image'
  match 'show_diagnostic_test' => 'lsat_test#show_diagnostic_test'
  match 'show_diagnostic_scantron' => 'lsat_test#show_diagnostic_scantron'
  match 'grade_diagnostic_test' => 'lsat_test#grade_diagnostic_test'
  match 'sign_out' => 'application#sign_out'
  match 'create_user' => 'application#create_user'
  match 'dogpile' => 'application#create_user'
  match 'signin' => 'application#signin'
  match 'home' => 'application#home'
  match 'grade_question' => 'lsat_test#grade_question'
  match 'next_question' => 'lsat_test#next_question'
  match 'finish_test' => 'lsat_test#finish_test'
#  match ''

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

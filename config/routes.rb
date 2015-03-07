Healthcosts::Application.routes.draw do
  #resources :costs
  resources :drgs, :only => [:index, :show]
  match 'drgs/:id/state/:state_id' => 'drgs#state', :as => "drgs_state"
  match 'drgs/:id/region/:region_id' => 'drgs#region', :as => "drgs_region"
  resources :apcs, :only => [:index, :show]
  match 'apcs/:id/state/:state_id' => 'apcs#state', :as => "apcs_state"
  match 'apcs/:id/region/:region_id' => 'apcs#region'
  resources :hospitals, :only => [:index, :show]
  match 'hospitals/:id/metrics' => 'hospitals#metrics', :as => "hospital_metrics"
  match 'hospitals/:id/inpatient' => 'hospitals#inpatient', :as => "hospital_inpatient"
  match 'hospitals/:id/outpatient' => 'hospitals#outpatient', :as => "hospital_outpatient"
  resources :costs, :only => [:index, :show]
  match '/compare_drg_costs' => 'costs#compare', :via => [:post]
  resources :apc_costs, :only => [:index, :show]
  match '/compare_apc_costs' => 'apc_costs#compare', :via => [:post]
  match "/region/:id" => 'hospitals#region', :as => "hospital_region"
  get "state" => 'hospitals#state'
  post "search" => 'hospitals#search'
  post "geolocate" => 'hospitals#geolocate'
  match "/state/:id" => 'hospitals#state', :as => "hospital_state"
  resources :icd10s, :only => [:index, :show]
  post "icd10s/search" => "icd10s#search"
  root :to => 'static#index'
  match 'about' => 'static#about'
  match 'privacy' => 'static#privacy_policy'
  match 'terms' => 'static#terms'

  resources :providers, :path => "physicians", :only => [:index, :show]
  match "physicians/npi/:id" => "providers#npi"
  post "physicians/search" => "providers#search"

  resources :organizations, :only => [:index, :show]

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
  
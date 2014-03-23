Election::Application.routes.draw do
 

  get 'legislators' => "legislators#index", as: 'home'
  
  get 'legislators/legislator/:id' => "legislators#show_legislator", as: 'legislator'
  get 'legislators/new' => "legislators#new_legislator", as: 'new_legislator'
  post 'legislators/legislator' => "legislators#create_legislator", as: 'legislators'
  get 'legislators/legislator/:id/edit' => "legislators#edit_legislator", as: 'edit_legislator'
  patch 'legislators/legislator/:id' => "legislators#update_legislator"
  put 'legislators/legislator/:id' => "legislators#update_legislator"

  get 'legislators/constituency/:id' => "legislators#show_constituency", as: 'constituency'
  get 'constituency/new' => "legislators#new_constituency", as: 'new_constituency'
  post 'legislators/constituency' => "legislators#create_constituency", as: 'constituencies'
  get 'legislators/constituency/:id/edit' => "legislators#edit_constituency", as: 'edit_constituency'
  patch 'legislators/constituency/:id' => "legislators#update_constituency"
  put 'legislators/constituency/:id' => "legislators#update_tconstituency"

  
 
  get 'legislators/party/:id' => "legislators#show_party", as: 'party'
  get 'party/new' => "legislators#new_party", as: 'new_party'
  post 'legislators/party' => "legislators#create_party", as: 'parties'
  get 'legislators/party/:id/edit' => "legislators#edit_party", as: 'edit_party'
  patch 'legislators/party/:id' => "legislators#update_party"
  put 'legislators/party/:id' => "legislators#update_party"



  get 'legislators/search' => "legislators#search_legislator", as: 'search1'
  get 'constituency/search' => "legislators#search_constituency", as: 'search2'
  get 'party/search' => "legislators#search_party", as: 'search3'
  
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


Rails.application.routes.draw do
  # Routes for the Terminacion_contrato resource:

  devise_for :users
  root 'homes#index'


  # SENT

  get "terminacion_contrato/desent/:id", :controller => "terminacion_contratos", :action => "desent"
  get "terminacion_contrato/sent/:id", :controller => "terminacion_contratos", :action => "sent"
  # PREVIEW

  get "terminacion_contrato/dereview/:id", :controller => "terminacion_contratos", :action => "dereview"
  get "terminacion_contrato/review/:id", :controller => "terminacion_contratos", :action => "review"

  # CREATE
  get "/terminacion_contratos/new", :controller => "terminacion_contratos", :action => "new"
  post "/create_terminacion_contrato", :controller => "terminacion_contratos", :action => "create"

  # READ
  get "/terminacion_contratos", :controller => "terminacion_contratos", :action => "index"
  get "/terminacion_contratos/:id", :controller => "terminacion_contratos", :action => "show"

  # UPDATE
  get "/terminacion_contratos/:id/edit", :controller => "terminacion_contratos", :action => "edit"
  post "/update_terminacion_contrato/:id", :controller => "terminacion_contratos", :action => "update"

  # DELETE
  get "/delete_terminacion_contrato/:id", :controller => "terminacion_contratos", :action => "destroy"
  #------------------------------

  # Routes for the Causal resource:
  # CREATE
  get "/causals/new", :controller => "causals", :action => "new"
  post "/create_causal", :controller => "causals", :action => "create"

  # READ
  get "/causals", :controller => "causals", :action => "index"
  get "/causals/:id", :controller => "causals", :action => "show"

  # UPDATE
  get "/causals/:id/edit", :controller => "causals", :action => "edit"
  post "/update_causal/:id", :controller => "causals", :action => "update"

  # DELETE
  get "/delete_causal/:id", :controller => "causals", :action => "destroy"
  #------------------------------

  # Routes for the Plazo_fijo_contrato resource:

  # SENT

  get "plazo_fijo_contrato/desent/:id", :controller => "plazo_fijo_contratos", :action => "desent"
  get "plazo_fijo_contrato/sent/:id", :controller => "plazo_fijo_contratos", :action => "sent"

  # PREVIEW

  get "plazo_fijo_contrato/dereview/:id", :controller => "plazo_fijo_contratos", :action => "dereview"
  get "plazo_fijo_contrato/review/:id", :controller => "plazo_fijo_contratos", :action => "review"

  # CREATE
  get "/plazo_fijo_contratos/new", :controller => "plazo_fijo_contratos", :action => "new"
  post "/create_plazo_fijo_contrato", :controller => "plazo_fijo_contratos", :action => "create"

  # READ
  get "/plazo_fijo_contratos", :controller => "plazo_fijo_contratos", :action => "index"
  get "/plazo_fijo_contratos/:id", :controller => "plazo_fijo_contratos", :action => "show"

  # UPDATE
  get "/plazo_fijo_contratos/:id/edit", :controller => "plazo_fijo_contratos", :action => "edit"
  post "/update_plazo_fijo_contrato/:id", :controller => "plazo_fijo_contratos", :action => "update"

  # DELETE
  get "/delete_plazo_fijo_contrato/:id", :controller => "plazo_fijo_contratos", :action => "destroy"
  #------------------------------


  # Routes for the Employer resource:
  # CREATE
  get "/employers/new_PJ", :controller => "employers", :action => "new_PJ"
  get "/employers/new_PN", :controller => "employers", :action => "new_PN"
  post "/create_employer_PJ", :controller => "employers", :action => "create_PJ"
  post "/create_employer_PN", :controller => "employers", :action => "create_PN"

  # READ
  get "/employers", :controller => "employers", :action => "index"
  get "/employers/:id", :controller => "employers", :action => "show"

  # UPDATE
  get "/employers/:id/edit_PJ", :controller => "employers", :action => "edit_PJ"
  get "/employers/:id/edit_PN", :controller => "employers", :action => "edit_PN"
  post "/update_employer_PJ/:id", :controller => "employers", :action => "update_PJ"
  post "/update_employer_PN/:id", :controller => "employers", :action => "update_PN"
  # DELETE
  get "/delete_employer/:id", :controller => "employers", :action => "destroy"
  #------------------------------

  # Routes for the Employee resource:
  # CREATE
  get "/employees/new", :controller => "employees", :action => "new"
  post "/create_employee", :controller => "employees", :action => "create"

  # READ
  get "/employees", :controller => "employees", :action => "index"
  get "/employees/:id", :controller => "employees", :action => "show"

  # UPDATE
  get "/employees/:id/edit", :controller => "employees", :action => "edit"
  post "/update_employee/:id", :controller => "employees", :action => "update"

  # DELETE
  get "/delete_employee/:id", :controller => "employees", :action => "destroy"
  #------------------------------

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

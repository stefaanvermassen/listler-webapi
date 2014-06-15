Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root :to=>"home#index"

  # Authentication

   get "signed_out" => "authentication#signed_out"
   get "forgot_password" => "authentication#forgot_password"
   get "password_sent" => "authentication#password_sent"

   get "sign_in" => "authentication#sign_in"
   post "sign_in" => "authentication#login"

   get "new_user" => "authentication#new_user"
   post "new_user" => "authentication#register"

   get "account_settings" => "authentication#account_settings"
   put "account_settings" => "authentication#set_account_info"

   get "forgot_password" => "authentication#forgot_password"
   put "forgot_password" => "authentication#send_password_reset_instructions"
   get "password_reset" => "authentication#password_reset"
   put "password_reset" => "authentication#new_password"

   get "admin_users" => "admin#users"
   delete "user/:id" => "admin#delete_user", :as => "user"

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

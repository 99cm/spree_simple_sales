Spree::Core::Engine.routes.draw do
  
  get "/sale", to: "home#sale"
  
  # Add your extension routes here
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      # The custom REST API route
      resources :sales, only: [:index]
    end
  end
end

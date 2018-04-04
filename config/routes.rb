Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  get "/.well-known/acme-challenge/2PVLfEDeZ04d7nGuhtj_N81ARgmeQKALgOSTtTa4mfw" => "ssl#index"
  mount Spree::Core::Engine, at: '/'
  Spree::Core::Engine.routes.draw do
    root "home#home"
    get "/products" => "home#index"
    get "/home" => "home#home"
    get "/sale" => "home#sale"
    get "/about" => "home#about"
    get "/contact" => "contacts#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

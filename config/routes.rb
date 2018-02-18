Rails.application.routes.draw do
  get "/test", to: proc { |e| [200, {}, ["ok"]]}

  #get "/users", to: "users#index"
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about_us"
  get "/mission", to: "static_pages#mission"
  get "/kariera", to: "static_pages#kariera"

  resources :orders
  resources :users

end

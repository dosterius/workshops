Rails.application.routes.draw do

  devise_for :users
	root to: "users#index"

  get "/test", to: proc { |e| [200, {}, ["ok"]]}

  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about_us"
  get "/mission", to: "static_pages#mission"
  get "/kariera", to: "static_pages#kariera"

  resources :users do 
    resources :orders

				end
end
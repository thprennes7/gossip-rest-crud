Rails.application.routes.draw do
	root "gossips#index"
	get '/contact', to: 'static_pages#contact', as: 'contact'
	get '/team', to: 'static_pages#team', as: 'team'
	resources :gossips
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	resources :cities
	resources :likes, only: [:create, :destroy]
	resources :comments, only: [:create, :destroy, :edit, :update]
end

Rails.application.routes.draw do
	root "gossip#index"
	get '/contact', to: 'static_pages#contact', as: 'contact'
	get '/team', to: 'static_pages#team', as: 'team'
	resources :gossips
	resources :users
end

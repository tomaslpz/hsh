Rails.application.routes.draw do

	resources :bids

	resources :entries

	resources :blocks, :path => 'blocks'
	get 'blocks(/fecha/:fecha)(/rid/:residence_id)', controller: 'blocks', action: 'show'

	get 'sessions/new'
	root 'static_pages#home'

	get 'admins/new', to:
	'admins#new'

  get '/signup', to:
  'admins#new'

  post '/signup', to:
  'admins#create'

  post 'entries/new', to:
  'entries#new'


	  get '/login', to:
	  'sessions#new'

	  post '/login', to:
	  'sessions#create'

		post '/logout', to:
	  'sessions#destroy'


  resources :admins
  resources :residences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

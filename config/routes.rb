Rails.application.routes.draw do

	root 'static_pages#home'

  resources :residences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

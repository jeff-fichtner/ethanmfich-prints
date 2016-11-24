Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :photos, only: [:index, :show]
  resources :admins do
		resources :photos, except: [:show]
  end
  resources :users do
  	resources :orders, except: :destroy
  end
  root 'photos#index'
end

Rails.application.routes.draw do




  resources :companies do
		resources :claims
	end


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


get 'companies/index'
get 'claims/index'

root to: "companies#index"

end

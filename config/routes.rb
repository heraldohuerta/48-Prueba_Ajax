Rails.application.routes.draw do


  get 'companies/index'

  Rails.application.routes.draw do
     devise_for :users, controllers: {
       sessions: 'users/sessions',
       registrations: 'users/registrations'
     }
   end


  root to: "companies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  devise_for :users
  get 'static_page/home'

  resources :occupation_courts
  resources :partners
  resources :employees
  resources :employee_types
  resources :partner_states
  resources :people
  resources :courts

# root 'occupation_courts#index'
 root 'static_page#home'
#root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

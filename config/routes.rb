Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :searches
  devise_for :users
  root to: 'pages#home'

  resources :products do
    resources :orders, only: [:new, :create,:show] do
    end


    resources :orders, only: [:show, :edit]
  end


  get 'perfil', to: 'users#show', as: :perfil
 # resources :products, only: [:new, :create, :index, :show]

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# namespace :admin do
#     resources :products, only: [:index]
# end
end

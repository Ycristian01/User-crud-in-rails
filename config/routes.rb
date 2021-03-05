Rails.application.routes.draw do
  root "users#index"
  #get "/users", to: "users#index"
  resources :users, except:[:create, :show, :destroy, :edit, :update] do
    resources :social_networks
  end
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  get "/:username", to: "users#show", as: "username"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

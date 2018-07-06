Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :me, only: [:index, :edit, :update]
  resources :jobs, except: :index do
    post 'toggle', to: 'jobs#toggle', as: :toggle
    resources :logs
  end
end

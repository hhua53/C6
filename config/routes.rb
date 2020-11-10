Rails.application.routes.draw do
  root to: "customers#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :customers, only: [:index] do
    collection do
      get 'alphabetized'
    end
    collection do
      get 'missing_email'
    end

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

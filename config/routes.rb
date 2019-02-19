Rails.application.routes.draw do
  root 'home#index'
  resources :datetimes
  resources :sub_multiple_choices
  resources :multiple_choices
  resources :sub_dropdowns
  resources :dropdowns
  resources :paragraphs
  resources :emails
  resources :texts
  resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :texts, only: [:index, :create, :update]
      resources :emails, only: [:index, :create, :update]
      resources :paragraphs, only: [:index, :create, :update]
      resources :dropdowns, only: [:index, :create, :update]
      resources :sub_dropdowns, only: [:index, :create, :update]
      resources :multiple_choices, only: [:index, :create, :update]
      resources :sub_multiple_choices, only: [:index, :create, :update]
      resources :datetimes, only: [:index, :create, :update]
      resources :contents, only: [:index, :create, :update]
      resources :home, only: [:index]
    end
  end
end

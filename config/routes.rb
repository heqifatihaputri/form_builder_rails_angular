Rails.application.routes.draw do
  resources :elements
  resources :forms do
    resources :input_elements, only: [:index, :new] do
      get :input_text, on: :collection
      get :input_email, on: :collection
      get :input_paragraph, on: :collection
      get :input_dropdown, on: :collection
      get :input_sub_dropdown, on: :collection
      get :input_multiple_choice, on: :collection
      get :input_sub_multiple_choice, on: :collection
      get :input_datetime, on: :collection
    end
  end
  root 'forms#index'
  resources :datetimes
  resources :sub_multiple_choices
  resources :multiple_choices
  resources :sub_dropdowns
  resources :dropdowns
  resources :paragraphs
  resources :emails
  resources :texts
  resources :contents
  resources :home, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :texts, only: [:index, :create, :update, :show]
      resources :emails, only: [:index, :create, :update, :show]
      resources :paragraphs, only: [:index, :create, :update, :show]
      resources :dropdowns, only: [:index, :create, :update, :show]
      resources :sub_dropdowns, only: [:index, :create, :update, :show]
      resources :multiple_choices, only: [:index, :create, :update, :show]
      resources :sub_multiple_choices, only: [:index, :create, :update, :show]
      resources :datetimes, only: [:index, :create, :update, :show]
      resources :contents, only: [:index, :create, :update, :show]
      resources :home, only: [:index, :show]
      resources :forms, only: [:index]
      resources :elements
    end
  end
end

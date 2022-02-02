Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todos do
    resources :items
  end

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
end

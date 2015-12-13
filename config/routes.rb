Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root to: 'mypage#index'
  get 'secret' => 'secrets#index'

  resources :users
  two_factor_auth_for :users
end

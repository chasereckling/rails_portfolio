Rails.application.routes.draw do
  devise_for :users
  root to: 'skills#index'
  resources :skills do
    resources :projects
  end
  resources :blogs do
    resources :comments
  end

  resources :users do
    resources :comments
  end

  resources :references
end

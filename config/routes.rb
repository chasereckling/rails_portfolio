Rails.application.routes.draw do
  resources :skills do
    resources :projects
  end
end

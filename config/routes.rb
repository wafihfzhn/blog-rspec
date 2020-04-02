Rails.application.routes.draw do
  namespace :users do
    end
  root 'public/homes#index' 
  
  devise_for :users

  namespace :users do
    resources :articles, only: %w[index new create]
  end

  scope module: :public, as: :public do
    resources :blogs, only: %w[index show]
  end
end

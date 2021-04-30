Rails.application.routes.draw do
  root 'public/homes#index' 
  
  devise_for :users

  namespace :users do
    resources :articles, only: %w[index new edit create update destroy]
  end

  scope module: :public, as: :public do
    resources :blogs, only: %w[index show]
  end
end

Rails.application.routes.draw do
  root 'public/homes#index' 
  
  devise_for :users

  scope module: :public, as: :public do
    resources :blogs, only: %w[index show]
  end
end

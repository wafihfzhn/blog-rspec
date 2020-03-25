Rails.application.routes.draw do
  devise_for :users

  scope module: :public, as: :public do
    resources :homes, only: %w[index]
  end
end

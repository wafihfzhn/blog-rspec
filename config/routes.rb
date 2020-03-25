Rails.application.routes.draw do
  root 'public/homes#index' 
  
  devise_for :users
end

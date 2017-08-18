Rails.application.routes.draw do
  devise_for :admins
  resources :posts

  #devise_scope :admins do
  #  resources :posts, except: [:index, :show]
  #end
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

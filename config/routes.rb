Rails.application.routes.draw do
  post 'comments/create', to: "comments#create", as: :comments

  delete 'comments/:id/delete', to: "comments#delete", as: :delete_comments

  devise_for :admins
  resources :posts
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

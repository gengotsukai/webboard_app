Rails.application.routes.draw do
  get 'themes/index'
  get 'themes/show/:id' => 'themes#show', as: :themes_show
  get 'themes/search' => 'themes#search', as: :comments_search
  post 'themes/create' => 'themes#create'
  delete 'themes/delete/:id' => 'themes#delete', as: :theme_delete
  post 'comments/create' => 'comment#create', as: :comment_create
  resources :categories, only: [:index, :create, :destroy]
  devise_for :users
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

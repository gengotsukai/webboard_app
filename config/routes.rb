Rails.application.routes.draw do
  get 'themes/index'
  get 'themes/show/:id' => 'themes#show', as: :themes_show
  devise_for :users
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  get 'websites/new'
  get 'websites/show'
   root "websites#new"
   resources :websites, only: [:index, :create, :show]
end

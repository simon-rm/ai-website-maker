Rails.application.routes.draw do
  get 'websites/new'
  get 'websites/show'
   root "websites#new"
   resources :websites, only: [:create, :show]
end

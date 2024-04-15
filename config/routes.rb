Rails.application.routes.draw do
   root "websites#new"
   resources :websites, only: [:create, :show]
end

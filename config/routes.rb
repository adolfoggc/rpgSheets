Rails.application.routes.draw do
  resources :rpg_systems, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'welcome#index'




end


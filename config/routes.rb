Rails.application.routes.draw do
  resources :char3p5_sheets
  resources :rpg_systems, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'char3p5_sheets#index'




end


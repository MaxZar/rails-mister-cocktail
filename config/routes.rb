Rails.application.routes.draw do
  root 'cocktails#index'
  get 'doses/new'
  get 'doses/create'
  get 'cocktails/:id/like', to: 'cocktails#like', as: :like_cocktail
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

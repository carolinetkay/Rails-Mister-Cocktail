Rails.application.routes.draw do
  # User Stories
  # 1. A user can see the list of cocktails
  # 2. A user can see the details of a given cocktail, with the dose needed for each ingredient
  # 3. A user can create a new cocktail
  root to: 'cocktails#index'
  resources :cocktails, only: [ :index, :show, :new, :create, :destroy ] do
    resources :doses, only: [ :new, :create ]
  end
    resources :doses, only: [ :destroy ]
end

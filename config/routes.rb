Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
# User Stories
# 1. A user can see the list of cocktails
# 2. A user can see the details of a given cocktail, with the dose needed for each ingredient
# 3. A user can create a new cocktail
  root to: 'cocktails#index'
  resources :cocktails, only: [ :index, :show, :new, :create ]
end

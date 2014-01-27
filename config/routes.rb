Aem::Application.routes.draw do

  root :to => 'item_categories#index'

  resources :item_categories
  resources :items
end

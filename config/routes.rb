Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, except: %i[edit update]
  resources :bookmarks, only: %i[new create destroy]
end

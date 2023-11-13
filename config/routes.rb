Rails.application.routes.draw do
  root 'pages#home'
  get 'directors/youngest', to: 'directors#youngest', as: 'youngest_directors'
  get 'directors/eldest', to: 'directors#eldest', as: 'eldest_directors'
  resources :directors, only: [:index, :show]
  resources :movies, only: [:index, :show]
  resources :actors, only: [:index, :show]
end

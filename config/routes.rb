Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'projects', to: 'pages#projects', as: :projects
  get 'contact', to: 'pages#contact', as: :contact
  get '404', to: 'pages#404', as: :404

  resources :reservations, only: [ :new, :create ]
end

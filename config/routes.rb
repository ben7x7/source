Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'accueil', to: 'pages#accueil', as: :accueil
  get 'animation', to: 'pages#animation', as: :animation
  get 'cards', to: 'pages#cards', as: :cards
  get 'carousel', to: 'pages#carousel', as: :carousel
  get 'contact', to: 'pages#contact', as: :contact
  get 'pieddepage', to: 'pages#pieddepage', as: :pieddepage
  get 'icones', to: 'pages#icones', as: :icones
  get 'images', to: 'pages#images', as: :images
  get 'matrix', to: 'pages#matrix', as: :matrix
  get 'nav', to: 'pages#nav', as: :nav
  get 'projects', to: 'pages#projects', as: :projects
  get 'p404', to: 'pages#p404', as: :p404
  get 'ressource', to: 'pages#ressource', as: :ressource
  get 'starwars', to: 'pages#starwars', as: :starwars

  resources :reservations, only: [ :new, :create ]
end

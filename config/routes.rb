Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jobs, only: [ :index, :show ]
  get 'chooseajob', to: 'jobschoices#index', as: :jobschoices
  get 'chooseastudy', to: 'studieschoices#index', as: :studieschoices
  patch "jobs/:id/like", to: "jobs#like", as: :like
  patch "jobs/:id/dislike", to: "jobs#dislike", as: :dislike
  get 'favorites', to: 'pages#favorites'
  get 'signupstudents', to: 'pages#signupstudents'
  get 'signupstudents2', to: 'pages#signupstudents2'
  get 'homepage', to: 'pages#homepage'
  get 'suggestion', to: 'pages#suggestion'
  resources :interests, only: [ :index, :show ]
  patch "interests/:id/likeinterest", to: "interests#likeinterest", as: :likeinterest
  patch "interests/:id/dislikeinterest", to: "interests#dislikeinterest", as: :dislikeinterest
end

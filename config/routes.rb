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
  get 'myprofile', to: 'pages#myprofile'
  get 'homepage', to: 'pages#homepage'
  get 'suggestion', to: 'pages#suggestion'
  get 'infos', to: 'pages#infos'
  get 'entretien', to: 'pages#entretien'
  get 'conseillers', to: 'pages#conseillers'
  get 'financements', to: 'pages#financements'
  get 'outils', to: 'pages#outils'
  get 'changements', to: 'pages#changements'
  get 'un_cv_parfait', to: 'pages#un_cv_parfait'
  get 'lettre_de_motivation_qui_cartonne', to: 'pages#lettre_de_motivation_qui_cartonne'
  get 'je_vais_tout_dechirer', to: 'pages#je_vais_tout_dechirer'
  get 'je_sors_du_lot', to: 'pages#je_sors_du_lot'
  get 'bourse_et_APL', to: 'pages#bourse_et_APL'
  get 'les_autres_aides', to: 'pages#les_autres_aides'
  get 'le_pret_bancaire', to: 'pages#le_pret_bancaire'
  resources :interests, only: [ :index, :show ]
  patch "interests/:id/likeinterest", to: "interests#likeinterest", as: :likeinterest
  patch "interests/:id/dislikeinterest", to: "interests#dislikeinterest", as: :dislikeinterest
end

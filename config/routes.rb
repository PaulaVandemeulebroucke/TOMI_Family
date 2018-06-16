Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
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
  get 'signupparents', to: 'pages#signupparents'
  get 'homepage', to: 'pages#homepage'
  get 'homepage_parents', to: 'pages#homepage_parents'
  get 'suggestion', to: 'pages#suggestion'
  get 'infos', to: 'pages#infos'
  get 'ose', to: 'pages#ose'
  get 'entretien', to: 'pages#entretien'
  get 'conseillers', to: 'pages#conseillers'
  get 'financements', to: 'pages#financements'
  get 'bourse', to: 'pages#bourse'
  get 'apl', to: 'pages#apl'
  get 'CGU', to: 'pages#CGU'
  get 'outils', to: 'pages#outils'
  get 'changements', to: 'pages#changements'
  get 'un_cv_parfait', to: 'pages#un_cv_parfait'
  get 'lettre_de_motivation_qui_cartonne', to: 'pages#lettre_de_motivation_qui_cartonne'
  get 'je_vais_tout_dechirer', to: 'pages#je_vais_tout_dechirer'
  get 'je_sors_du_lot', to: 'pages#je_sors_du_lot'
  get 'bourse_et_APL', to: 'pages#bourse_et_APL'
  get 'les_autres_aides', to: 'pages#les_autres_aides'
  get 'le_pret_bancaire', to: 'pages#le_pret_bancaire'
  get 'tout_savoir_sur_orientation', to: 'pages#tout_savoir_sur_orientation'
  get 'epanouissement_au_quotidien', to: 'pages#epanouissement_au_quotidien'
  get 'energies_que_je_transmets', to: 'pages#energies_que_je_transmets'
  get 'devenir_mentor', to: 'pages#devenir_mentor'
  get 'send_friend_request', to: 'networks#send_friend_request'
  get 'network', to: 'networks#network'
  get 'messenger', to: 'networks#messenger'
  get 'users_all', to: 'networks#users_all'
  get 'aideslogement', to: 'pages#aideslogement'
  get 'aidesregionales', to: 'pages#aidesregionales'
  get 'aidespourpartir', to: 'pages#aidespourpartir'
  get 'aidestransports', to: 'pages#aidestransports'
  get 'aidesmaster', to: 'pages#aidesmaster'
  get 'aidespremieremploi', to: 'pages#aidespremieremploi'
  get 'aidesartistes', to: 'pages#aidesartistes'
  get 'aidesmerite', to: 'pages#aidesmerite'
  get 'aidesurgences', to: 'pages#aidesurgences'
  get 'aidesautres', to: 'pages#aidesautres'
  get 'dropdown_HDF', to: 'pages#dropdown_HDF'
  get 'dropdown_IDF', to: 'pages#dropdown_IDF'
  get 'dropdown_Normandie', to: 'pages#dropdown_Normandie'
  get 'dropdown_Bretagne', to: 'pages#dropdown_Bretagne'
  get 'dropdown_PDLL', to: 'pages#dropdown_PDLL'
  get 'dropdown_CVDL', to: 'pages#dropdown_CVDL'
  get 'dropdown_BFC', to: 'pages#dropdown_BFC'
  get 'dropdown_GE', to: 'pages#dropdown_GE'
  get 'dropdown_NA', to: 'pages#dropdown_NA'
  get 'dropdown_ARA', to: 'pages#dropdown_ARA'
  get 'dropdown_Occitanie', to: 'pages#dropdown_Occitanie'
  get 'dropdown_PACA', to: 'pages#dropdown_PACA'
  get 'dropdown_Paradis_francais', to: 'pages#dropdown_Paradis_francais'

  resources :interests, only: [ :index, :show, :edit ]
  patch "interests/:id/likeinterest", to: "interests#likeinterest", as: :likeinterest
  patch "interests/:id/dislikeinterest", to: "interests#dislikeinterest", as: :dislikeinterest
  patch "interests/:id/like2interest", to: "interests#like2interest", as: :like2interest
  patch "interests/:id/dislike2interest", to: "interests#dislike2interest", as: :dislike2interest
  get 'meslikes', to: 'interests#meslikes'

  get 'myprofile', to: 'users#edit'
  patch 'edit_profile', to: 'users#update'
  get 'search', to: 'users#search'
  post 'unblock_friend', to: 'networks#unblock_friend'
  post 'accept_friend', to: 'networks#accept_friend'
  post 'decline_friend', to: 'networks#decline_friend'
  post 'request_friend', to: 'networks#request_friend'
  post 'block_friend', to: 'networks#block_friend'
  post 'remove_friend', to: 'networks#remove_friend'
  get 'search_friends', to: 'users#search_friends'

  resources :conversations do
    resources :messages
  end
end

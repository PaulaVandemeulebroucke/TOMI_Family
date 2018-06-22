JobInterest.destroy_all
Interest.destroy_all
puts 'Creating interests...'


interests = [
  {
    name: "SOIGNER, SECOURIR"
  },
  {
    name: "CONVAINCRE, COMMUNIQUER"
  },
  {
    name: "PROTÉGER L'ENVIRONNEMENT"
  },
  {
    name: "FAIRE UN TRAVAIL DE PRÉCISION"
  },
  {
    name: "TRAVAILLER DANS LA MUSIQUE"
  },
  {
    name: "TRAVAILLER DANS LE SPECTACLE, LA TÉLÉ"
  },
  {
    name: "MANIER LES CHIFFRES"
  },
  {
    name: "TRAVAILLER AVEC LES NOUVELLES TECHNOLOGIES"
  },
  {
    name: "ETRE EN CONTACT AVEC DU PUBLIC, DES CLIENTS"
  },
  {
    name: "ORGANISER, GÉRER"
  },
  {
    name: "FABRIQUER, CONSTRUIRE, REPARER"
  },
  {
    name: "TRAVAILLER AVEC DES PERSONNES ÂGÉES"
  },
  {
    name: "PARLER DES LANGUES ÉTRANGÈRES"
  },
  {
    name: "SUIVRE DES CONSIGNES PRÉCISES"
  },
  {
    name: "CONSEILLER, AIDER LES AUTRES"
  },
  {
    name: "FAIRE RESPECTER LA LOI"
  },
  {
    name: "AVOIR DES SENSATIONS FORTES"
  },
  {
    name: "CONTRÔLER"
  },
  {
    name: "DESSINER"
  },
  {
    name: "DIRIGER, DÉCIDER"
  },
  {
    name: "ECRIRE, DONNER ENVIE DE LIRE"
  },
  {
    name: "ENQUÊTER, DÉCOUVRIR"
  },
  {
    name: "ENSEIGNER, ÉDUQUER"
  },
  {
    name: "ÊTRE INNOVANT"
  },
  {
    name: "EXERCER UN MÉTIER ARTISTIQUE OU CRÉATIF"
  },
  {
    name: "EXPÉRIMENTER, FAIRE DE LA RECHERCHE"
  },
  {
    name: "FAIRE DU COMMERCE, TRAVAILLER DANS UN MAGASIN"
  },
  {
    name: "SE DÉPENSER PHYSIQUEMENT"
  },
  {
    name: "SE DÉPLACER SOUVENT"
  },
  {
    name: "TRAVAILLER AVEC DES ANIMAUX"
  },
  {
    name: "TRAVAILLER AVEC DES ENFANTS OU DES ADOLESCENTS"
  },
  {
    name: "TRAVAILLER AVEC DES PERSONNES HANDICAPÉES"
  },
  {
    name: "TRAVAILLER DANS L'URGENCE"
  },
  {
    name: "TRAVAILLER DANS LA NATURE"
  },
  {
    name: "TRAVAILLER LA NUIT"
  },
  {
    name: "TRAVAILLER LE GOÛT"
  },
  {
    name: "TRAVAILLER SEUL"
  },
  {
    name: "SE DÉPLACER SOUVENT"
  }
]
interests.each do |interest|
  new_interest = Interest.new(interest)
  new_interest.save
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Job.destroy_all

puts 'Creating jobs...'
jobs = [
  {
    name:         "ACHETEUR D'ESPACES PUBLICITAIRES",
    photo:        "acheteur_d_espace_publicitaire",
    synonym:      "",
    sector:       ["COMMERCE", "IMMOBILIER", "COMMUNICATION", "INFORMATION"],
    short_description:  "L’acheteur d’espaces publicitaires travaille pour une marque. Il négocie les meilleurs lieux aux meilleurs prix pour ses clients annonceurs. Autres missions : optimiser un budget de campagne de pub et offrir l'impact maximum à ses annonceurs.",
    description:  "L'acheteur d'espaces publicitaires met en oeuvre le plan média, c'est à dire la stratégie établie pour un client annonceur.
Pour ce faire, il achète des espaces publicitaires. Il est amené à travailler sur différents types de médias : internet, TV, radio, presse, affichage public.
C'est à lui que revient la gestion de la répatrtition de tous les budgets entre les différents espaces publicitaires choisis.
Il doit offrir un support pertinent pour la campagne de publicité et veiller à optimiser les coûts. Il doit maîtriser les médias traditionnels et les moyens de communication comme les panneaux électroniques ou les supports multimédias.
Selon le cas, il s’adresse à des entreprises d’affichage, des régies publicitaires de radios, de chaînes TV, des entreprises de presse et les acteurs du web.
Il recherche le meilleur rapport qualité prix des supports publicitaires, en tenant compte des périodes couvertes par la campagne, du calendrier et du budget prévisionnel.
Il doit donc résoudre l’équation : nature du produit + calendrier de la campagne + nature du ou des supports = rendement maximum.
Cette fonction est devenue très pointue, notamment en ce qui concerne les achats TV. Il existe dans ce domaine de nombreux logiciels spécialisés.
Le sens du dialogue, un goût évident pour les chiffres et la négociation sont des qualités indispensables. Rigueur et précision s'imposent dans ce métier.
Une obligation pour exercer ce métier : avoir un carnet d’adresses bien rempli.
Métier voisin : le vendeur d'espaces publicitaires dont la mision est de promouvoir le support qui l'emploie (TV, radio, presse, internet, afficheur).",
    study:  "Il n’existe pas de formation spécifique correspondant à ce métier. Néanmoins des connaissances en gestion et en communication sont nécessaires.
Des formations de type BTS ou DUT complétées par une licence pro (bac+3) en information/communication sont recommandées pour débuter dans la spécialité d’achat d’espaces publicitaires :
- BTS communication
- BTS design graphique option communication et médias numériques,
- DUT information communication, option publicité.

Des formations universitaires peuvent également convenir pour préparer à ce type de poste :
- Licences pro :communication et management d'événements Poitiers ; management de l'événementiel Lille 1, Pau ; métiers du médiaplanning Bordeaux 3...

- Master pro : carrières technico-commerciales de l’information et de la communication à Montpellier 2 ; communication des entreprises et des institutions à Paris 3 ; marketing et communication des entreprises à Paris 2...
Pour s'informer : www.orientation-pour-tous.fr rubrique s'orienter dans la formation/rechercher un lieu/SCUIOP
Par ailleurs, des écoles de commerce et de gestion ou des organismes spécialisés en publicité/marketing/communication délivrent des diplômes adaptés aux responsabilités professionnelles dans le domaine de l’achat d’espace.",
    salary:  "Salaire en début de carrière : entre 1 650 et 2 150 € brut/mois. (partie variable à ajouter)",
    career:  "L’acheteur d’espaces publicitaires peut évoluer vers des fonctions de management ou de direction d’un service achat ou d’un groupe achat. L’expérience, les performances et les qualités personnelles déterminent les promotions possibles dans un milieu professionnel où le turn over est important.",
    similar_job:  ["ASSISTANT DE COMMUNICATION / ASSISTANTE DE COMMUNICATION", "PLANNEUR STRATÉGIQUE", "CHEF DE PUBLICITÉ", "CHEF DE PRODUIT", "MÉDIA-PLANNER", "DIRECTEUR / DIRECTRICE DU MARKETING", "RESPONSABLE DE COMMUNICATION", "ATTACHÉ / ATTACHÉE DE PRESSE", "CHARGÉ DE PRODUCTION", "CHARGÉ(E) DE RELATIONS PUBLIQUES"],
    interest:  ["CONVAINCRE, COMMUNIQUER"],
    statut:        ''
  },
  {
    name:         '',
    photo:        '',
    synonym:      '',
    sector:       [],
    short_description:  '',
    description:  '',
    study:  '',
    salary:  '',
    career:  '',
    similar_job:  [],
    interest:  [],
    statut:        ''
  }
]
Job.create!(jobs)
puts 'Finished!'

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
    statut: ""
  },
  {
    name:         "AGENT DE STÉRILISATION",
    photo:        "agent_de_stérilisation",
    synonym:      "",
    sector:       ["BIOLOGIE", "CHIMIE", "ENVIRONNEMENT", "NATURE", "NETTOYAGE", "SANTÉ"],
    short_description: "Récupérer, laver, stériliser, décontaminer, désinfecter tous les instruments et linges utilisés dans les établissements de soins (hôpitaux, cliniques, blocs opératoires, maisons de retraites, de cure) telles sont les missions d’un agent de stérilisation.",
    description:  "L’agent de stérilisation récupère et trie le matériel à stériliser. Avant la stérilisation elle-même il le lave, le sèche. Il assure le fonctionnement d’un autoclave qui est un appareil à fermeture hermétique pour réaliser sous pression une stérilisation à la vapeur. Il en valide les cycles.
Il reconstitue les plateaux opératoires après avoir conditionné le matériel médicochirurgical et les pansements. Le pliage et le linge à stériliser est aussi de sa compétence. De même que le nettoyage des locaux. Il livre dans les services le matériel traité.
Pour ces tâches, l’agent respecte des protocoles opératoires d’hygiène et de sécurité. Il choisit des produits adaptés à chaque traitement en fonction du matériel concerné. Il évalue l’état du matériel de stérilisation et signale les problèmes éventuels.
L’agent de stérilisation organise son activité en fonction des urgences et représente un lien avec les services de soins et médico-techniques. Il est en relation avec le responsable de l’hygiène et de la sécurité, avec la pharmacie de l’établissement et les sociétés de maintenance des autoclaves.
Cet agent travaille souvent dans un milieu chaud et humide. En principe, ses horaires sont réguliers mais sont soumis à un roulement en fonction d’un tableau de service ou d’urgences.",
    study:  "Les établissements de santé recrutent des agents possédant un diplôme de niveau CAP ou bac pro avec des options maintenance et entretien des locaux ou options à caractère sanitaire ou social :
niveau CAP
- CAP APH - agent de propreté et d'hygiène,
- titre agent de stérilisation en milieu hospitalier (GIP FCIP CAFOC, Greta 92).
niveau Bac
- Bac pro HPS - hygiène, propreté, stérilisation,

Certains agents de stérilisation sont déjà titulaires du DEAS (diplôme d’Etat d’aide-soignant) ou du BP (brevet professionnnel) de préparateur en pharmacie.
Dans la fonction publique hospitalière le recrutement s’effectue sur concours des agents de service hospitalier (ASH).",
    salary:  "Salaire en début de carrière :  1 600 € brut/ mois.",
    career:  "Une évolution de carrière est possible, si l’agent de stérilisation n’est pas déjà aide-soignant, en passant le DEAS.
A plus longue échéance, les IFSI proposent des stages de perfectionnement et des formations au métier d’infirmier après 3 années de service. L’aide-soignant peut alors se présenter aux épreuves de sélection à l’entrée des IFSI.",
    similar_job:  ["AGENT THERMAL", "AIDE-SOIGNANTE / AIDE-SOIGNANT", "BRANCARDIER / BRANCARDIÈRE", "PRÉPARATEUR EN PHARMACIE / PRÉPARATRICE EN PHARMACIE", "INFIRMIÈRE - INFIRMIER", "THANATOPRACTEUR"],
    interest:  ["PROTÉGER L'ENVIRONNEMENT", "SOIGNER, SECOURIR"],
    statut: ""
  }
]
Job.create!(jobs)
puts 'Finished!'

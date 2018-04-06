# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
JobInterest.destroy_all
Job.destroy_all
Interest.destroy_all
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# ATTENTIONNNN A ENELEVER AVANT PROD !!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

puts 'Creating jobs...'
jobs = [
  {
    name:         "ACHETEUR D'ESPACES PUBLICITAIRES",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744139/acheteur_d_espace_publicitaire.jpg",
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
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744141/agent_de_ste%CC%81rilisation.jpg",
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
  },
  {
    name:         "ACOUSTICIEN",
    photo:        "acousticien",
    synonym:      "technicien en acoustique",
    sector:       ["BÂTIMENT", "TRAVAUX PUBLICS", "ENVIRONNEMENT", "NATURE", "NETTOYAGE"],
    short_description: "L’acousticien est un spécialiste de la lutte contre les nuisances sonores, urbaines, industrielles, routières ou liées aux transports. Sa mission : rechercher des solutions contre ce type de pollution.",
    description: "Le travail de l’acousticien membre d’un bureau d’études ou de contrôle porte sur plusieurs secteurs d’activité : bâtiment et travaux publics, transports aériens et terrestres, services, industrie métallurgique et énergétique, électroacoustique, sonorisation. Les problèmes soulevés sont chaque fois différents.
L’acousticien se déplace obligatoirement sur le terrain (usine, immeuble, chantier d’autoroute, de chemin de fer, lieux culturels et musicaux…), où il définit comment construire en tenant compte du relief et des particularités du site.
Il réalise des mesures acoustiques et vibratoires, réalise des simulations à l'aide de codes numériques d'acoustique et de vibrations puis analyse le résultats de ces dernières. À partir de ces analyses, l’acousticien conçoit des procédés techniques pour réduire le niveau sonore, voire le supprimer.
Il préconise l’utilisation de tels ou tels matériaux en fonction de leurs propriétés isolantes, il jauge les distances et identifie précisément ce qui est ou deviendra source de bruit.
Dans le bâtiment, il possède la haute main sur la partie acoustique, en relation avec l’architecte, pour faire respecter les normes et les règlements : cloisons, isolations, suspensions…
Avant le démarrage du chantier, il effectue des mesures à proximité des riverains pour vérifier que le projet respectera la réglementation. Pour toutes ces opérations, il utilise, outre des appareils de mesure, l’informatique. Il doit par ailleurs savoir interpréter des résultats parfois contradictoires !
En tant que professionnel du son, l’acousticien peut aussi être requis pour la construction de salles de spectacle dont il optimisera l’acoustique.
La condition de travail la plus gênante est bien sûr le bruit des lieux que l’acousticien visite en permanence. Pour cette raison, la surdité le guette, et l’utilisation de protections spéciales est donc indispensable.",
    study:  "Les formations vont de bac + 2 (niveau technicien) à bac + 5 (niveau ingénieur).
niveau bac + 2 : BTS, DUT ou L2 dans les secteurs de la mesure, de la physique, de la mécanique, de la maintenance, du génie civil, de la thermique et de l'énergie (BTS MP, DUT GEII, DUT GMP, BTS audovisuel, BTS batiment, BTS FED...), CQPM technicien en acoustique et vibration (IUT Saint-Etienne).
niveau bac + 3 :
- licence pro mécanique acoustique et vibration (formation la plus spécialisée dans le domaine de l’acoustique) parcours acoustique environementale et bâtiment ou acoustique et vibrations industrielles : Université du Maine (http://sciences.univ-lemans.fr/), IUT de Saint-Etienne (http://www.iut.univ-st-etienne.fr)
- licence en physique et en électronique
niveau bac + 5
- master acoustique spécialité acoustique et fluides parcours acoustique physique (Paris Diderot), ingénierie acoustique ou Traitement du signal, informatique et acoustique musicale (UPMC), Acoustique ATVE/Acoustique MR AC/Acoustique MR CAM (Le Mans), ingénierie acoustique (Paris Saclay), acoustique physique/capteurs et CND par ultrasons (ESPCI Paris tech), recherche acoustique (Marseille)...
- master of science in acoustics (Université de Lyon / Ecole centrale de Lyon),
- diplôme d'ingénieur : génie mécanique filière acoustique et vibrations industrielles (UTC).
Pour contacter les Scuio : www.orientation-pour-tous.fr rubrique s'orienter dans l'information.",
    salary:  "Salaire en début de carrière : entre  1 600 € et 2 300 € brut/ mois.",
    career:  "Au sein d’un bureau d’études, l’acousticien peut prendre la direction d’une équipe d’intervention et de recherche. Il peut aussi se spécialiser dans le BTP ou dans un type de nuisance sonore : circulation ferroviaire, aéroportuaire ou autoroutière, par exemple.",
    similar_job:  ["ELECTRICIEN DU BÂTIMENT", "PLAQUISTE", "CONTRÔLEUR EN ÉLECTRICITÉ ET ÉLECTRONIQUE", "DOMOTICIEN", "ARCHITECTE D'INTÉRIEUR", "ARCHITECTE", "PHYSICIEN"],
    interest:  ["FAIRE UN TRAVAIL DE PRÉCISION", "PROTÉGER L'ENVIRONNEMENT", "TRAVAILLER DANS LA MUSIQUE", "TRAVAILLER DANS LE SPECTACLE, LA TÉLÉ"],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  },
  {
    name:         "",
    photo:        "",
    synonym:      "",
    sector:       ["", "", "", "", "", ""],
    short_description: "",
    description: "",
    study:  "",
    salary:  "",
    career:  "",
    similar_job:  ["", "", "", "", "", ""],
    interest:  ["", ""],
    statut: ""
  }
]
jobs.each do |job|
  new_job = Job.new(job)
  new_job.remote_photo_url = job[:photo]
  new_job.save
end

######################################

interests = [
  {
    name: "SOIGNER, SECOURIR"
  },
  {
    name: "CONVAINCRE, COMMUNIQUER"
  },
  {
    name: ""
  },
  {
    name: ""
  },
  {
    name: ""
  },
  {
    name: ""
  },
  {
    name: ""
  },
  {
    name: ""
  },
  {
    name: ""
  },
  {
    name: ""
  }
]
interests.each do |interest|
  new_interest = Interest.new(interest)
  new_interest.save
end

#########################################

jobinterests = [
  {
    job: "ACHETEUR D'ESPACES PUBLICITAIRES",
    interest: "CONVAINCRE, COMMUNIQUER"
  },
  {
    job: "AGENT DE STÉRILISATION",
    interest: "SOIGNER, SECOURIR"
  }
]
jobinterests.each do |jobinterest|
  new_jobinterest = JobInterest.create(job: Job.find_by_name(jobinterest[:job]), interest: Interest.find_by_name(jobinterest[:interest]))
end

puts 'Finished!'

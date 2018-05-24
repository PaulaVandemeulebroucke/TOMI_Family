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
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744139/acousticien.jpg",
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
    name:         "ACTUAIRE",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744143/actuaire.jpg",
    synonym:      "chargé d'études actuarialles, technicien d'actuariat",
    sector:       ["BANQUE", "FINANCE", "ASSURANCE", "DROIT", "", ""],
    short_description: "L’actuaire est un haut technicien de l’assurance. Il réalise des études économiques, financières et statistiques pour mettre au point des contrats. Il évalue les risques, les coûts et la rentabilité. Il fixe les tarifs et suit les résultats d'exploitation.",
    description: "L'actuaire joue un rôle majeur dans la décision d’accepter un contrat, de partager les risques en co-assurance ou de réassurer le risque auprès d’une autre compagnie d’assurances.
Il négocie ces diverses procédures avec les chargés d’études, courtiers, agents généraux et les partenaires des sociétés concurrentes.
Il intervient dans la gestion financière des cotisations placées en épargne. Il recherche et centralise les données, élabore et présente les résultats des analyses sous forme de tableaux, barèmes, formules.
L'actuaire travaille le plus souvent au siège d’une compagnie d’assurances, avec des déplacements auprès des réseaux d’exploitation. La plupart des activités basées sur des calculs impliquent l’utilisation des outils informatiques et des logiciels les plus spécialisés.
Outre ces activités techniques, l'actuaire a des responsabilités d’encadrement.
L’organisation de son travail s’effectue en toute autonomie. Il opère dans les sociétés d’assurances, les caisses de retraite et de prévoyance, les sociétés de bourse, les institutions financières, les services d’études économiques des banques et des grandes entreprises.",
    study:  "Après un bac S, les formations sont à dominante mathématique, statistique et économique. Le niveau bac + 5 est le minimum requis pour travailler en tant qu’actuaire.

Huit formations initiales sont reconnues par l'Institut des actuaires et donnent accès au statut d'Actuaire Associé de l'Institut des actuaires : l'ISFA, l'ISUP, l'Université de Strasbourg, l'EURIA, l'Université Paris Dauphine, l'ENSAE, l'ESSEC, le Collège des Ingénieurs, le Cnam.
D'autres formations conduisent également au métier :
- master statistique et actuariat appliquées en assurances dommages et santé (Sarads) à l'Iriaf (université de Poitiers),
- master ingénierie maths-info : parcours ingénierie statistique et actuariat à l'Université catholique de lOuest.
- master Ingénierie Statistique et Informatique de la Finance, de l'Assurance et du Risque (ISIFAR) à Paris Diderot.
Le CEA (centre d'études acturielles) et le CNAM proposent des sessions de formation continue, elles aussi reconnues par l'institut des actuaires. ",
    salary:  "Salaire en début de carrière :  3 200 € brut/ mois. ",
    career:  "Après plusieurs années d’expérience, l’actuaire peut devenir responsable d’un service avec des fonctions d’encadrement importantes.",
    similar_job:  ["AGENT GÉNÉRAL D'ASSURANCES", "ANALYSTE FINANCIER", "AUDITEUR EXTERNE", "CAISSIÈRE / CAISSIER", "CHARGÉ / CHARGÉE DE CLIENTÈLE BANCAIRE", "CONTRÔLEUR DE GESTION / CONTRÔLEUSE DE GESTION", "COURTIER EN ASSURANCES", "EXPERT-COMPTABLE / EXPERTE-COMPTABLE", "RÉDACTEUR EN ASSURANCES", "COMPTABLE"],
    interest:  ["MANIER LES CHIFFRES"],
    statut: ""
  },
  {
    name:         "ADMINITRATEUR / ADMINISTRATRICE BASE DE DONNEES",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744143/administrateur_bdd.jpg",
    synonym:      "Database administrator , gestionnaire de bdd",
    sector:       ["ELECTRONIQUE", "INFORMATIQUE"],
    short_description: "L'administrateur de BDD est le gestionnaire d'un volume important d'informations : adresses clients, tarifs, statistiques, documents. L'administrateur met ces données à la disposition des collaborateurs concernés.",
    description: "Le rôle de l'administrateur de bases de données (ABD) est d’organiser et de gérer en toute fiabilité les systèmes de gestion des données de l'entreprise. Il doit en assurer la cohérence, la qualité et la sécurité. Il peut avoir à gérer plusieurs bases de données.
Il participe au choix des progiciels et à la mise en oeuvre des bases de données de l'entreprise. C’est ensuite lui qui installe, configure, administre et optimise la ou les bases. Au-delà de l’aspect technique, il prend en compte tout l’environnement de l’entreprise ainsi que les besoins et les requêtes des utilisateurs.

Il est au carrefour de différents services avec lesquels il travaille. Il peut participer à la formation des utilisateurs dans l’entreprise. Il peut être amené à faire des déplacements dans ou hors de l’entreprise ou intervenir sur la base en dehors des heures ouvrables.

Les qualités indispensables : rigueur et sens de la méthode, mais aussi ouverture d'esprit, écoute, sens de la communication et capacité d'adaptation.",
    study:  "De 3 à 5 années d'études supérieures et une expérience de 3 ans dans le développement informatique sont souhaitables.
- BTS SIO services informatiques aux organisations (bac+2),
- DUT informatique (bac+2),
- licence pro (bac+3) :BDD, internet et sécurité Paris-Est ; systèmes informatiques en BDD CNAM Paris ; BDD Chambéry-Annecy...
- master master pro (bac+5) : bioinformatique, connaissances, données Montpellier ; BDD et intelligence artificielle Dijon...
- diplôme d'ingénieur (bac+5).",
    salary:  "Salaire en début de carrière :  entre 2 300 et 3 000 € brut/ mois.",
    career:  "Avec plusieurs années d’expérience, l'administrateur de bases de données peut évoluer vers un poste de chef de projet ou de responsable informatique encadrant toute une équipe d’informaticiens.",
    similar_job:  ["CHEF DE PROJET INFORMATIQUE", "CHEF DE PROJET NUMÉRIQUE ÉDITION", "CHEF DE PROJET WEB", "DÉVELOPPEUR INFORMATIQUE", "DÉVELOPPEUR MULTIMÉDIA", "DÉVELOPPEUR WEB", "INGÉNIEUR RÉSEAU", "RESPONSABLE DE SÉCURITÉ INFORMATIQUE", "TECHNICIEN DE MAINTENANCE INFORMATIQUE", "TRAFFIC MANAGER"],
    interest:  ["MANIER LES CHIFFRES", "TRAVAILLER AVEC LES NOUVELLES TECHNOLOGIES"],
    statut: "BON"
  },
  {
    name:         "AFFRÉTEUR",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744142/affre%CC%82teur.jpg",
    synonym:      "agent de fret, commissionnaire en transport, courtier en transport, transitaire",
    sector:       ["HUMANITAIRE", "TRANSPORT", "LOGISTIQUE"],
    short_description: "L’affréteur est l’intermédiaire entre des clients qui ont des marchandises à expédier et les transporteurs. Il recherche le meilleur moyen de transport (coût, temps, trajet) pour son client. Les mots clés du métier : organisation, coordination, flexibilité.",
    description: "On peut trouver l'affréteur dans les entreprises de transport et de logistique (entreposage), chez les transitaires (entreprise de courtage, cabinet conseil en transport et logistique) et dans l'industrie (responsable de transport).
Sa mission principale : trouver le meilleur rapport qualité/prix pour transporter des produits (ou des voyageurs) tout en respectant les délais impartis. Ainsi, il choisit les moyens de transport les plus appropriés (routier, ferroviaire, maritime, fluvial, aérien), les sous-traitants qui assureront la prestation de transport, négocie avec eux les prix puis établit le contrat ainsi que les autres documents nécessaires. Il s'assure ensuite du suivi de la prestation (enlèvement, livraison...) et en rend compte à son client. L'affrétement peut être national ou international.

Pour répondre aux différentes contraintes imposées par son univers de travail, l'affréteur doit bien connaître la législation en vigueur, les prix du marché et la géographie des transports. De plus, il doit parler couramment l'anglais, être clairvoyant, débrouillard et avoir une grande rapidité d'exécution.
L'affréteur travaille principalement en collaboration avec le chef de quai, les manutentionnaires et les commerciaux. Le lieu physique principal de travail, pour l'affréteur, est son bureau. Ses outils principaux sont ceux de la communication et des TIC.
La réduction du temps de travail à 35 heures existe aussi dans le secteur des transports et de leur organisation. Néanmoins elle est difficilement applicable, car la charge de travail, très irrégulière, est variable d'un jour à l'autre. Il existe une réglementation du travail spécifique aux transports.",
    study:  "L’affréteur est un technicien de l’organisation du transport. Plusieurs diplômes au niveau bac et bac + 2/3 certifient des qualifications nécessaires :
niveau bac
- bac pro logistique,
niveau bac + 2
- BTS transport et prestations logistiques,
- DUT gestion logistique et transport.
Possibilité de poursuivre en licence professionnelle orientée transport/logistique.

Il existe par ailleurs des écoles spécialisées dans le secteur des transports qui proposent de multiples formations. Elles sont dispensées par des organismes professionnels comme l’AFT-IFTIM ou PROMOTRANS.
Mais dans tous les cas, la connaissance du terrain est primordiale avant d’acquérir des responsabilités. Au niveau de l'expérience professionnelle, en plus du diplôme, un stage de quelques semaines dans un service d'affrètement est idéal pour se préparer à cet emploi.

A savoir : le CAP agent d’entreposage et de messagerie ne suffit pas pour exercer les responsabilités de l’affréteur.",
    salary:  "Salaire en début de carrière :  1 600 € brut/mois. ",
    career:  "Avec une certaine ancienneté et surtout de l’expérience dans la fonction d’affréteur, il est possible d'évoluer vers le métier de chef de service affrètement, puis responsable d'exploitation voire même de chef d'agence. Un affréteur peut également se lancer dans la création de sa propre entreprise d’affrètement.",
    similar_job:  ["ASSISTANT LOGISTIQUE", "DISPATCHEUR", "EMBALLEUR / EMBALLEUSE", "EMPLOYÉ DE GROUPAGE", "LITIGEUR TRANSPORT", "LOGISTICIEN HUMANITAIRE", "RESPONSABLE LOGISTIQUE", "TRANSITAIRE / AGENT DE TRANSIT"],
    interest:  ["ETRE EN CONTACT AVEC DU PUBLIC, DES CLIENTS", "ORGANISER, GÉRER"],
    statut: ""
  },
  {
    name:         "AFFÛTEUR / AFFUTEUSE",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744142/affu%CC%82teur.jpg",
    synonym:      "affuteur d'outillage industriel, mécanicien-affûteur",
    sector:       ["INDUSTRIE", "MATÉRIAUX", "MÉCANIQUE", "MAINTENANCE"],
    short_description: "Le mécanicien affûteur travaille dans une scierie ou dans certaines entreprises de la mécanique. Il répare et entretient des instruments tranchants. Il réalise des opérations minutieuses avec des cotes et des plans.",
    description: "Le métier d'affûteur s’exerce généralement en atelier dans une atmosphère souvent bruyante pour effectuer les réparations.
Une machine en panne, scie ou tronçonneuse ou n’importe quel autre outil tranchant de l’industrie du bois, par exemple, l’affûteur intervient immédiatement. Il répare et optimise les réglages de l’engin afin de rétablir la coupe parfaite de la machine.
En dehors de l'industrie du bois, on rencontre des affûteurs dans le secteur de la mécanique et de l'aiguisage des objets coupants (lames de massicot par exemple).
L’utilisation de machines automatisées a facilité le travail de coupe. Aussi, outre ses compétences en mécanique, l’affûteur doit connaître désormais les procédures exigées par les technologies modernes.
Les normes de sécurité sont draconiennes en raison de la dangerosité des outils utilisés ou sur lesquels il travaille : lames de scie, fraises, forets, outils industriels/agricoles/industries papatières/imprimerie, instruments de chirurgie, hachoirs, instruments de cuisine, machines à affûter.
Les  machines à commandes numériques ont aujourd'hui amélioré la sécurité, même si les projections d’étincelles et de particules métalliques demeurent. Quoiqu’il en soit l’attention de l’affûteur doit en permanence être affûtée.
Spécialiste sollicité dans l’urgence, concentration, précision et sang froid sont des qualités indispensable pour ce métier.",
    study:  "Ce métier est accessible à partir d'un CAP :
- CAP conducteur-opérateur de scierie,
- CAP mécanicien conducteur des scieries et industries mécaniques du bois, option affûteur de sciage, tranchage, déroulage,
- CAP outillages en outils à découper et à emboutir (industrie mécanique), ",
    salary:  "Salaire en début de carrière : 1500€ brut/mois.",
    career:  "Dans de grandes unités, l’ouvrier affûteur expérimenté peut être amené à diriger l’équipe de maintenance. Il peut aussi créer son propre atelier d’affûtage avec son circuit de ramassage des outils et lames à travailler et réparer.",
    similar_job:  ["CONDUCTEUR D'ENGINS FORESTIERS", "INGÉNIEUR DES PONTS, DES EAUX ET FORÊTS", "CHARPENTIER", "CHARPENTIER DE MARINE", "MENUISIER", "PÉPINIÉRISTE", "TECHNICIEN FORESTIER", "COUTELIER"],
    interest:  ["FAIRE UN TRAVAIL DE PRÉCISION", "RÉPARER"],
    statut: ""
  },
  {
    name:         "AGENT D'ENTRETIEN",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744142/agent_d_entretien.jpg",
    synonym:      "",
    sector:       ["SOCIAL", "SERVICES À LA PERSONNE"],
    short_description: "Électricité, menuiserie, plomberie, tapisserie, peinture ou encore jardinage… L’agent de petits travaux possède plusieurs cordes à son arc pour prendre en charge, au domicile de son employeur, en intérieur ou au jardin, des tâches de courte durée.",
    description: "En intérieur, l’agent d’entretien “petits travaux” exécute toutes sortes de tâches, parfois en l’absence du particulier qui sollicite ses services, de la maintenance à la rénovation.
Par exemple : pose de tringles à rideaux, changement d’un plomb dans le tableau électrique ou d’un joint de robinet, nettoyage d’un revêtement de sol, réparation d’une fuite d’eau, montage d’un meuble, remplacement d’une bouteille de gaz, fixation d’une étagère, installation et mise en route d’un appareil ménager…
En extérieur, il ne prend en charge que des travaux légers.
Par exemple : nettoyage de balcon ou de terrasse, réparation ou installation de clôture. Le jardinage se résume lui aussi à des tâches de base : tonte du gazon, ramassage des feuilles, taille d’une haie ou d’un massif, engazonnement, évacuation de déchets végétaux vers une déchetterie ou alimentation du compost, entretien du matériel…
Dans la maison comme au jardin, l’agent de “petits travaux” utilise le matériel et les produits mis à sa disposition par le particulier employeur.
Il bénéficie d’une large autonomie dans l’organisation de son travail, et ses horaires dépendent de la nature des travaux et du nombre de particuliers qui font appel à lui.
Il peut travailler également pour des entreprises ou des associations du secteur des services à la personne.",
    study:  "Il n’existe pas de formation ni de diplôme spécifique au métier d’agent d’entretien “petits travaux à domicile”, mais plusieurs diplômes professionnels attestent de connaissances de base utiles qui intéresseront associations, entreprises ou particuliers.
Par exemple CAP et bac pro dans les domaines de :
- entretien et nettoyage
- électrotechnique
- génie thermique et climatique
- industrie du bois
- bâtiment et travaux publicsassistant technique en milieu familial et collectif,
- CAPA services en milieu rural dominante services aux personnes,
- CAPA travaux paysagers,
- CAPA productions horticoles,
- BP équipements sanitaires, menuisier,
- bac pro services de proximité et vie locale,
- bac pro service aux personnes et aux territoires.
En général, ces diplômes peuvent faire l’objet d’une reconnaissance dans le cadre de la VAE (validation des acquis de l’expérience).",
    salary:  "Salaire en début de carrière : entre 25 et 30 € de l’heure en moyenne.",
    career:  "Un agent employé par une entreprise ou une association du secteur de l’aide à la personne peut s’installer à son compte, à condition que ses tarifs soient concurrentiels à ceux pratiqués par les structures spécialisées.",
    similar_job:  ["EMPLOYÉ À DOMICILE", "EMPLOYÉ DE MÉNAGE À DOMICILE", "RESPONSABLE DE SERVICES À DOMICILE", "ASSISTANT INFORMATIQUE ET INTERNET À DOMICILE", "ASSISTANTE MATERNELLE", "AUXILIAIRE DE VIE SOCIALE"],
    interest:  ["RÉPARER", "TRAVAILLER AVEC DES PERSONNES ÂGÉES"],
    statut: "BON"
  },
  {
    name:         "AGENT D'ESCALE / CHEF D'ESCALE",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744142/agent_d_escale.jpg",
    synonym:      "agent d'enregistrement, agent d'escale commercial",
    sector:       ["TRANSPORT", "LOGISTIQUE"],
    short_description: "L’agent d’escale est chargé de l’accueil, de l’information et de la prise en charge de la clientèle des aéroports (arrivées et départs). Il travaille sous la responsabilité du chef d’escale, qui supervise l’équipe sur le site aéroportuaire.",
    description: "L’agent d’escale fait partie des services commerciaux d’une compagnie aérienne. Il travaille aux guichets d’accueil des passagers d’un aéroport, où il prend en charge les clients en partance (embarquement), à leur arrivée (débarquement) ou en correspondance (transit).
L'agent d'escale procède à toutes les opérations d’enregistrement des passagers et de leurs bagages, et facilite les formalités de correspondance. Si nécessaire, il prend en charge les enfants en bas âge non accompagnés ou les personnes âgées ou handicapées.
En cas d’incident, d’intempéries, de retard ou d’erreur concernant les bagages, l'agent d'escale en informe les passagers.
En liaison avec les différents services de l’aérogare (sécurité, hôtellerie…), il utilise l’informatique et tous les moyens modernes de communication.
L'agent d'escale peut travailler les week-ends et les jours fériés. Ses horaires sont variables et souvent décalés.
Comme pour tous les métiers d’accueil du public, l’agent d’escale doit avoir un bon équilibre nerveux pour faire face à des situations parfois stressantes. À noter : il faut avoir un casier judiciaire vierge.
Le chef d’escale est un cadre d’exploitation. Il assure le traitement des vols et l’encadrement de l’équipe opérationnelle sur le site aéroportuaire.
Le chef d'escale a deux fonctions principales : une mission commerciale qui consiste à veiller à la qualité des services rendus aux passagers, et une mission de sécurité et de sûreté liée au transport aérien. Pour cette raison, le chef d’escale est en contact avec toutes les autorités de l’aéroport : police, aviation civile, services de la compagnie, gestion des vols, services de maintenance…
Enfin, le chef d'escale assure également la liaison avec les entreprises de sous-traitance.",
    study:  "Pour devenir agent d’escale, la pratique de l’anglais courant et le bac sont exigés. Le niveau bac + 2 est d’ailleurs de plus en plus fréquent.
Certaines formations peuvent être utiles pour accéder à ce poste. Exemples :
MC accueil dans les transports (bac + 1),
BTS tourisme (fusion des BTS AGTL et VPT),
DUT TC (techniques de commercialisation), pour évoluer plus facilement dans sa carrière
certificat d’agent d’escale en aéroport (Ecole supérieure des métiers de l'aviation - ESMA).
Le chef d’escale, s’il n’a pas fait carrière au sein du personnel commercial d’une compagnie aérienne, est le plus souvent issu d’une formation commerciale liée au transport ou au tourisme, qui lui a conféré de grandes aptitudes de manager.
Technicien supérieur de l'aviation - TSA (Enac accès par concours),
diplôme d'écoles de commerce,
master professionnel : master pro management du transport aérien (Marseille 3) ou le master pro transport et logistique industrielle et commerciale (Lyon 2)...",
    salary:  "Salaire en début de carrière :  1 500 € brut/ mois.",
    career:  "Un agent d’escale peut acquérir des responsabilités au sein de son équipe : avec beaucoup d’expérience et une formation complémentaire, il peut devenir superviseur ou chef d’escale de permanence, par recrutement interne.
Un chef d’escale peut évoluer vers les services administratifs centraux de sa compagnie : direction des ressources humaines, direction centrale de la communication, ou vers d'autres fonctions selon la mobilité interne ou les opportunités qu'offre les aéroports.",
    similar_job:  ["CHEF DE PRODUITS VOYAGES", "COMMISSAIRE DE BORD", "HÔTESSE D'ACCUEIL", "HÔTESSE DE L'AIR / STEWARD", "AGENT DE SÛRETÉ AÉROPORTUAIRE", "AGENT DE PISTE D'AÉROPORT", "AVITAILLEUR AVION", "CONTRÔLEUR AÉRIEN"],
    interest:  ["PARLER DES LANGUES ÉTRANGÈRES", "SUIVRE DES CONSIGNES PRÉCISES"],
    statut: ""
  },
  {
    name:         "AGENT D'ESCALE FERROVIAIRE",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744142/agent_d_escale_ferroviaire.jpg",
    synonym:      "agent de gare technique et services",
    sector:       ["TRANSPORT", "LOGISTIQUE"],
    short_description: "L’agent d’escale ferroviaire SNCF a une double mission, en chantier de préparation des trains et au contact des voyageurs. Objectifs : sécurité et satisfaction de la clientèle. Le recrutement des jeunes se fait sur une période de formation rémunérée de 4 mois ou par alternance.",
    description: "L’agent d’escale ferroviaire SNCF assure deux missions distinctes mais complémentaire.

En chantier de préparation, il effectue l’assemblage des voitures pour composer le train (accrochage, décrochage), tout en respectant les règles de sécurité. Il vérifie les branchements (freins, électricité, sonorisation) et procède à des essais techniques.

L’agent d’escale ferroviaire réalise aussi des missions de contrôle :
-    coordination de la circulation des trains de voyageurs et de marchandise (aiguillage, signalisation, protection des voies…
-    protection du personnel sur les voies, alerte…
-    régulation du trafic en liaison avec le PCC

En gare, il est responsable des conditions de départ du train. Il lance l’ordre de départ en fonction de la planification.

En contact avec le public, il informe et oriente les voyageurs. Il est une pièce maîtresse dans la gestion de situation de crise.

Maîtrise de soi, sens du service, réactivité sont des qualités indispensables à l’exercice du métier.
L'agent d'escale ferriviaire ets également appelé agent de gare technique et services sur le réseau Transilien ",
    study:  "Pour candidater à un poste d’agent d’escale ferroviaire :
-    sans diplôme mais avec une bonne expérience de la relation client,
-    avec un CAP du domaine transport/logistique/commerce,
-    avec un bac général ou professionnel transport/logistique, commerce, services,
-    avec le bac pro ARCU – accueil-relation client et usagers (indiqué).

NB : une double compétence technique et commerciale est un atout.

Processus : dépôt de candidature, contrôle du profil, tests, évaluation, formation rémunérée de 4 mois débouchant sur le titre professionnel d'agent d'escale ferroviaire (bac + 1), poste.",
    salary:  "Salaire en début de carrière :  1 500 € brut/ mois.",
    career:  "L'agent d'escale ferroviaire évoluera sur une grille indiciaire de salaire. Avec de l'ancienneré, il deviendra chef d'équipe ou de site.",
    similar_job:  ["AGENT DES GARES", "AGENT DE CONTRÔLE DES TRANSPORTS", "AGENT DE MAINTENANCE DES CATÉNAIRES", "AGENT DE MANŒUVRE DE RÉSEAU FERRÉ", "CONDUCTEUR DE TRAIN", "INGÉNIEUR FERROVIAIRE", "COMMERCIAL À BORD DES TRAINS"],
    interest:  ["CONSEILLER, AIDER LES AUTRES", "ETRE EN CONTACT AVEC DU PUBLIC, DES CLIENTS", "SUIVRE DES CONSIGNES PRÉCISES"],
    statut: "BON"
  },
  {
    name:         "AGENT DE CONTRÔLE DES TRANSPORTS",
    photo:        "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744142/agent_de_contro%CC%82le_de_transports.jpg",
    synonym:      "chef de bord pour TGV , commercial à bord des trains , contrôleur",
    sector:       ["TRANSPORT", "LOGISTIQUE"],
    short_description: "Au sein des transports urbains ou des trains, l'agent de contrôle vérifie les titres de transports et assure une mission d'information et de conseil auprès des clients.",
    description: "Chargé du contrôle des titres de transports, il décide des suites à donner en cas d'infraction, dresse les procès verbaux et encaisse les amendes.
En parallèle, il dispense conseils et informations auprès de la clientèle (questions sur les horaires, les rythmes du trafic ou les destinations, justificatifs...). A bord des trains, il est également chargé d'assister le conducteur pour le bon déroulement des circulations (fermeture des portes, intervention en cas d'incidents)
Il aide au bon fonctionnement des équipements, signale les avaries ou les déprédations éventuelles, veille au respect des réglementations et des consignes de sécurité.
En situation il lui arrive de jouer un rôle de prévention et de médiateur social pour désamorcer d’éventuels conflits toujours possibles dans un milieu confiné où l’entassement n’est pas rare.
Il travaille la plupart du temps en station debout, en relation permanente avec le public. Ses horaires de service sont très souvent décalés ou irréguliers : en roulement, les samedis, dimanches et jours fériés,tard le soir ou tôt le matin. Un bon équilibre nerveux et un sens aigu du relationnel sont importants, surtout en cas de litige avec la clientèle.
Le contrôleur ne travaille jamais seul mais en équipe. Il porte une tenue spécifique obligatoire.
Le plus souvent, l’agent de contrôle est salarié d’une compagnie de transport urbain ou d’une régie dont la plus connue est la RATP. La plupart des grandes villes possèdent aussi leur régie ou leur compagnie privée ou municipale de transport urbain (Lille, Rouen, Caen, Lyon, Marseille, Toulouse, etc.). La SNCF emploie aussi des agents de contrôle à bord des trains en Ile de France ou sur les grandes lignes (commercial à bord des trains, chef de bord pour TGV). ",
    study:  "Si le métier recrute sans formation, certains diplômes peuvent toutefois constituer une base intéressante :
- CAP agent d’accueil et de conduite routière, transport de voyageur,
- bac pro accueil-relation clients et usagers,
- bac pro transport,
- MC (mention complémentaire) accueil dans les transports : 1 an après le bac.
Commercial à bord des trains / SNCF :
- sans diplôme avec une expérience professionnelle significative d’au moins 3 ans dans le domaine du service,
ou
- titulaire d’un diplôme de niveau IV bac ou V CAP, complété par une expérience dans la vente et la relation clients,
- avoir au moins 20 ans.
Après recutement, formation interne rémunérée de 4 mois assurée par la SNCF.
Contrôleur à la RATP :
- âgé d'au moins 18 ans
- aucun diplôme exigé
- être titulaire du permis B
- être en position d’obtenir l’assermentation délivrée par le tribunal de grande instance de Paris (casier judiciaire vierge)
- capacité d'analyse de situation et discernement (tests),
- faire preuve de réactivité, capacité d'écoute, sens du dialogue, argumentation, maîtrise de soi, savoir gérer les situations conflictuelles, disposition à travailler en équipe,
- expérience d'au moins un an  dans le domaine commercial, service ou sécurité.

Formation de 6 semaines rémunurée assurée par la RATP à l’issue de l'embauche.  A noter, en 2017 la RATP prévoit de recruter 100 agents de contrôle. ",
    salary:  "Salaire en début de carrière :  1 676 € brut/ mois. (sur 13 mois)",
    career:  "Après plusieurs années d’expérience professionnelle, l’agent de contrôle peut encadrer une équipe. Il peut aussi se reconvertir en interne pour une autre fonction : machiniste, conducteur, formateur.",
    similar_job:  ["COMMERCIAL À BORD DES TRAINS", "CONDUCTEUR / CONDUCTRICE D'AUTOBUS", "CONDUCTEUR DE TAXI", "CONDUCTEUR DE TRAIN", "CONDUCTEUR ROUTIER / CONDUCTRICE ROUTIÈRE", "CONVOYEUR DE FONDS", "COURSIER", "LIVREUR", "MÉCANICIEN / MÉCANICIENNE DE MAINTENANCE FERROVIAIRE"],
    interest:  ["FAIRE RESPECTER LA LOI", "SE DÉPLACER SOUVENT"],
    statut: "BON"
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
    name: "RÉPARER"
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
    name: "SE DÉPLACER SOUVENT"
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
  },
  {
    job: "AGENT DE STÉRILISATION",
    interest: "PROTÉGER L'ENVIRONNEMENT"
  },
  {
    job: "ACOUSTICIEN",
    interest: "FAIRE UN TRAVAIL DE PRÉCISION"
  },
  {
    job: "ACOUSTICIEN",
    interest: "PROTÉGER L'ENVIRONNEMENT"
  },
  {
    job: "ACOUSTICIEN",
    interest: "TRAVAILLER DANS LA MUSIQUE"
  },
  {
    job: "ACOUSTICIEN",
    interest: "TRAVAILLER DANS LE SPECTACLE, LA TÉLÉ"
  },
  {
    job: "ACTUAIRE",
    interest: "MANIER LES CHIFFRES"
  },
  {
    job: "ADMINITRATEUR / ADMINISTRATRICE BASE DE DONNEES",
    interest: "MANIER LES CHIFFRES"
  },
  {
    job: "ADMINITRATEUR / ADMINISTRATRICE BASE DE DONNEES",
    interest: "TRAVAILLER AVEC LES NOUVELLES TECHNOLOGIES"
  },
  {
    job: "AFFRÉTEUR",
    interest: "ETRE EN CONTACT AVEC DU PUBLIC, DES CLIENTS"
  },
  {
    job: "AFFRÉTEUR",
    interest: "ORGANISER, GÉRER"
  },
  {
    job: "AFFÛTEUR / AFFUTEUSE",
    interest: "FAIRE UN TRAVAIL DE PRÉCISION"
  },
  {
    job: "AFFÛTEUR / AFFUTEUSE",
    interest: "RÉPARER"
  },
  {
    job: "AGENT D'ENTRETIEN",
    interest: "RÉPARER"
  },
  {
    job: "AGENT D'ENTRETIEN",
    interest: "TRAVAILLER AVEC DES PERSONNES ÂGÉES"
  },
  {
    job: "AGENT D'ESCALE / CHEF D'ESCALE",
    interest: "PARLER DES LANGUES ÉTRANGÈRES"
  },
  {
    job: "AGENT D'ESCALE / CHEF D'ESCALE",
    interest: "SUIVRE DES CONSIGNES PRÉCISES"
  },
  {
    job: "AGENT D'ESCALE FERROVIAIRE",
    interest: "CONSEILLER, AIDER LES AUTRES"
  },
  {
    job: "AGENT D'ESCALE FERROVIAIRE",
    interest: "ETRE EN CONTACT AVEC DU PUBLIC, DES CLIENTS"
  },
  {
    job: "AGENT D'ESCALE FERROVIAIRE",
    interest: "SUIVRE DES CONSIGNES PRÉCISES"
  },
  {
    job: "AGENT DE CONTRÔLE DES TRANSPORTS",
    interest: "FAIRE RESPECTER LA LOI"
  },
  {
    job: "AGENT DE CONTRÔLE DES TRANSPORTS",
    interest: "SE DÉPLACER SOUVENT"
  }
]
jobinterests.each do |jobinterest|
  new_jobinterest = JobInterest.create(job: Job.find_by_name(jobinterest[:job]), interest: Interest.find_by_name(jobinterest[:interest]))
end

puts 'Finished!'


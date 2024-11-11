#import "@preview/framodel-demissalar:0.1.0": *

#set text(lang: "fr", size: 12pt, font: "libertinus serif")

#demissalar(
  prénom: "Prénom",
  nom: "Nom",
  adresse: (
    voie: "42 bis rue du Pont",
    complément: "",
    code-postal: "75011",
    commune: "Paris",
  ),
  employeur: (
    nom: "Travail et Cie.",
    adresse: (
    voie: "30 rue du Pont",
    complément: "bâtiment 3",
    code-postal: "75013",
    commune: "Paris",
    )
  ),
  titre-destinataire: none,
  destinataire: "Service Ressources Humaines",
  // titre-destinataire: "Monsieur",
  // destinataire: [#smallcaps(Untel) \ Directeur des Ressources Humaines]

  // type-remise: [Lettre recommandée avec accusé de réception],
  // type-remise: [Remise en main propre contre décharge],

  fonction: "fonction occupée",
  date-contrat: datetime(year: 2000, month: 1, day: 1),
  préavis-contrat: "mon contrat de travail",
  // préavis-contrat: "la convention collective",
  // préavis-contrat: "l'accord d'entreprise",
  durée-préavis: "2 mois",
  //durée-préavis: duration(days: 60),
  effectue-préavis: true,

  lieu: [Lyon],
  espace-signature: 1cm,
  signature: image("signature.png"),
)


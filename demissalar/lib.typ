
#set text(lang: "fr")

#let list-args = (marker: "", indent: 2em)

#let display-address(
  voie: [],
  complément: [],
  code-postal: [],
  commune: [],
) = [
  #set list(..list-args)
  - #voie
  #if complément != "" [- #complément]
  - #code-postal #commune
]

#let display-titre(titre) = {
  if titre == none [
    Madame, Monsieur
  ] else [
    #titre
  ]
}

#let demissalar(
  espace: 1cm,
  format-date: "[day]/[month]/[year]",
  prénom: "[Prénom]",
  nom: "[Nom]",
  adresse: (
    voie: "",
    complément: "",
    code-postal: "00000",
    commune: "",
  ),
  employeur: (
    nom: "",
    adresse: (
      voie: "",
      complément: "",
      code-postal: "00000",
      commune: "",
    ),
  ),
  destinataire: "[destinataire]",
  titre-destinataire: none,
  type-remise: [],
  fonction: "",
  date-contrat: datetime(year: 2000, month: 1, day: 1),
  préavis-contrat: "[accord/contrat/convention]",
  durée-préavis: "2 mois",
  effectue-préavis: true,
  date: datetime.today(),
  lieu: [],
  espace-signature: 3cm,
  signature: none,
) = [

  #set par(justify: true)

  #set align(top + left)
  #list(..list-args, [#prénom #smallcaps(nom)])
  #display-address(..adresse)

  #set align(right)
  #list(..list-args, [#employeur.nom], [#titre-destinataire #destinataire])
  #display-address(..employeur.adresse)

  #set align(left)

  = Objet : Démission \ #type-remise
  #set heading(offset: 1)


  #display-titre(titre-destinataire),

  Je vous informe par cette lettre de ma décision de démissionner de mes fonctions
  #if fonction != "" [(#fonction)]
  exercées depuis le #date-contrat.display(format-date) au sein de l'entreprise.

  J'ai bien noté que les termes de #préavis-contrat
  prévoient un préavis de #durée-préavis

  #if not effectue-préavis [
    Cependant, et par dérogation, je sollicite la possibilité de ne pas effectuer ce préavis et, par conséquent, de quitter l'entreprise à la date de réception de ma lettre de démission, mettant ainsi fin à mon contrat de travail.

    Je vous remercie de bien vouloir me confirmer votre accord concernant la dispense de préavis.
  ]


  Lors de mon dernier jour de travail dans l'entreprise, je vous demanderai de bien vouloir me transmettre un reçu pour solde de tout compte, un certificat de travail ainsi qu'une attestation France Travail (anciennement Pôle emploi).

  Je vous prie d'agréer, #display-titre(titre-destinataire),
  l'expression de mes salutations distinguées.

  #set align(right + horizon)

  #lieu, le #date.display(format-date)

  #if signature == none {
    v(espace-signature)
  } else {
    block(height: espace-signature, signature)
  }

  #prénom #smallcaps(nom)
]






#set text(lang: "fr")

#let list-args = (marker: "", indent: 2em)

#let display-address(
  voie: [],
  complement: [],
  code-postal: [],
  commune: [],
) = [
  #set list(..list-args)
  - #voie
  #if complement != "" [- #complement]
  - #code-postal #commune
]

#let attest(
  espace: 1cm,
  feminin: false,
  prenom: [],
  nom: [],
  adresse: (
    voie: [],
    complement: [],
    code-postal: "00000",
    commune: [],
  ),
  date: datetime.today(),
  format-date: "[day]/[month]/[year]",
  lieu: [],
  espace-signature: 3cm,
  signature: none,
  faits,
) = [

  #set par(justify: true)
  #show heading.where(level: 1): set align(center)

  = ATTESTATION SUR L'HONNEUR
  #set heading(offset: 1)

  #v(espace)

  Je soussigné#if feminin [e]
  #list(..list-args, [#prenom #smallcaps(nom)])
  demeurant
  #display-address(..adresse)

  atteste sur l'honneur que

  #faits

  #v(espace)

  J'ai bien conscience que cette attestation pourra être produite en justice
  et que toute fausse déclaration de ma part m'expose à des sanctions pénales.

  Fait pour servir et valoir ce que de droit.

  #set align(right + horizon)

  #lieu, le #date.display(date-format)

  #if signature == none {
    v(espace-signature)
  } else {
    block(height: espace-signature, signature)
  }

  #prenom #smallcaps(nom)
]



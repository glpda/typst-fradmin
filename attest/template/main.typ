#import "@preview/framodel-attest:0.1.0": *

#set text(lang: "fr")

#show: attest.with(
    feminin: true,
    prenom: "Prénom",
    nom: "Nom",
    adresse: (
        voie: "30 rue du Pont",
        complement: "",
        code-postal: "75011",
        commune: "Paris",
    ),
    lieu: [Lyon],
    espace-signature: 1cm,
    signature: image("signature.png")
)

// description des faits et circonstances...
#lorem(50)


# Framodel Attest

French affidavit template - modèle d'attestation sur l'honneur.


## Documentation (en)

The template has the following arguments:
- `police` : The font type. You can choose any supported font in your system. (default: `"libertinus serif"`)
- `feminin` : Your gender for grammatical agreement, "soussigné" -> "soussignée" (default: `false`)
- `prenom` : Your first name.
- `nom` : Your familly name.
- `adresse` : Your full address, see bellow for detailed format.
- `date` : The date when the attestation is written. (default: `datetime.today()`)
- `date-format` : The date display format, see [typst documentation](https://typst.app/docs/reference/foundations/datetime/#format). (default: `"[day]/[month]/[year]"`)
- `lieu` : The place where the attestation is written.
- `signature` : The signature, can be either `none` to put an empty space for an handwritten signature or some content like `image("signature.png")`. (default: `none`)
- `espace-signature` : The signature height. (default: `3cm`)

The `adresse` should be in the following format:
```typst
adresse: (
  voie: "30 rue du Pont",
  complement: "bâtiment 4", // optional
  code-postal: "75011",
  commune: "Paris",
)
```


## Documentation (fr)

Ce modèle a les arguments suivants :
- `police` : La police. Vous pouvez choisir n'importe quelle police supportée installée. (par défaut: `"libertinus serif"`)
- `feminin` : Votre genre pour l'accord grammatical, "soussigné" -> "soussignée" (par défaut: `false`)
- `prenom` : Votre prénom.
- `nom` : Votre nom de famille.
- `adresse` : Votre adresse complète, voir ci-dessous pour le format détaillé.
- `date` : La date de l'attestation. (par défaut: `datetime.today()`)
- `date-format` : Le format d'affichage de la date, voir la [documentation typst](https://typst.app/docs/reference/foundations/datetime/#format). (par défaut: `"[day]/[month]/[year]"`)
- `lieu` : Le lieu où l'attestation est écrite.
- `signature` : La signature, peut être soit `none` pour laisser un espace vide pour une signature manuscrite ou du contenu comme `image("signature.png")`. (par défaut: `none`)
- `espace-signature` : La hauteur de l'espace pour signature. (par défaut: `3cm`)

L'adresse doit être au format suivant :
```typst
adresse: (
  voie: "30 rue du Pont",
  complement: "bâtiment 4", // optionnel
  code-postal: "75011",
  commune: "Paris",
)
```


## License (en)

Strongly inspired by this
[tool](https://www.service-public.fr/simulateur/calcul/AttestationHonneur)
made by the Direction de l'Information Légale et Administrative (Dila - Premier ministre),
updated on 3 novembre 2024.

This package is available under the
[MIT license](https://github.com/glpda/framodel/blob/master/LICENSE),
the attribution clause does not apply to anything in the
[template directory](template).


## Licence (fr)

Fortement inspiré par cet outil
[tool](https://www.service-public.fr/simulateur/calcul/AttestationHonneur)
fait par la Direction de l'Information Légale et Administrative (Dila - Premier ministre),
mise à jour le 3 novembre 2024.

Ce paquet est distribué sous la
[licence MIT](https://github.com/glpda/framodel/blob/master/LICENSE),
la clause d'attribution ne s'applique pas à tout ce qui est dans le
[répertoire template](template).



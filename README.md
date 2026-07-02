# UrbanCanvas

UrbanCanvas est une application iPhone développée en SwiftUI.

## Objectif

Afficher une liste d'œuvres de Street Art et consulter le détail de chaque œuvre.

## Version V1

- Liste des œuvres
- Vue détail d'une œuvre

## Contraintes techniques

- iPhone uniquement
- SwiftUI
- Orientation portrait
- Données statiques codées en dur
- Aucune API distante
- Aucune base de données locale

## Branches Git

- main : version stable
- dev : développement





UrbanCanvas
├── App
│   ├── UrbanCanvasApp.swift → point d’entrée de l’application
│   ├── ContentView.swift → charge l’écran principal ArtworkListView
│   └── Assets.xcassets → images, icône, couleurs, ressources graphiques
│
├── Models
│   ├── Artwork.swift → modèle principal d’une œuvre
│   │   └── utilisé par MockData, ArtworkListView, ArtworkDetailView
│   ├── Artist.swift → modèle représentant un artiste
│   │   └── utilisé dans Artwork
│   └── ArtType.swift → types d’œuvres : mural, graffiti, collage, installation
│       └── utilisé dans Artwork et dans les filtres
│
├── Data
│   └── MockData.swift → données statiques de l’application
│       └── crée les artistes et les œuvres utilisés par les vues
│
├── Views
│   ├── ArtworkListView.swift → écran liste des œuvres
│   │   └── utilise MockData, ArtworkRowView, FilterButtonView, FilterPopupView
│   └── ArtworkDetailView.swift → écran détail d’une œuvre
│       └── utilise DetailHeaderImageView et ArtworkInfoRowView
│
├── Components
│   ├── ArtworkRowView.swift → ligne d’œuvre dans la liste
│   ├── DetailHeaderImageView.swift → grande image du détail
│   ├── ArtworkInfoRowView.swift → ligne d’information “Titre : Valeur”
│   ├── FilterButtonView.swift → bouton d’ouverture des filtres
│   ├── FilterPopupView.swift → popup contenant les filtres
│   └── FilterOptionButtonView.swift → bouton d’option dans la popup
│
└── urban_canvasTests
    ├── Models → tests des modèles : Artwork, Artist, ArtType
    ├── Data → tests de MockData et du filtrage
    ├── Components → tests des composants réutilisables
    └── Views → tests des écrans principaux
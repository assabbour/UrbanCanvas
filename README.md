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
│
├── Models
│   │   (Contient les structures de données principales de l'application.
│   │   Ces fichiers décrivent les objets utilisés par les vues et les données statiques.)
│   │
│   ├── ArtType.swift
│   │   (Définit le type d'une œuvre : mural, graffiti, collage ou installation.
│   │   Utilisé par Artwork.swift pour catégoriser chaque œuvre.)
│   │
│   ├── Artist.swift
│   │   (Représente un artiste avec son nom, sa ville et sa biographie.
│   │   Utilisé dans Artwork.swift pour associer une œuvre à son artiste.)
│   │
│   └── Artwork.swift
│       (Représente une œuvre de Street Art.
│       Contient le titre, l'artiste, la ville, la description, le nom de l'image,
│       le type, la date, l'état, la localisation ainsi que les coordonnées GPS.
│       Utilise Artist.swift et ArtType.swift.
│       Utilisé par MockData.swift, ArtworkListView.swift,
│       ArtworkDetailView.swift et ArtworkMapView.swift.)
│
├── Data
│   │   (Contient les données statiques de l'application.
│   │   Pour cette V1, il n'y a pas d'API ni de base de données.)
│   │
│   └── MockData.swift
│       (Centralise tous les artistes et les œuvres codés en dur.
│       Crée les objets Artist et Artwork utilisés dans toute l'application.
│       Utilisé principalement par ArtworkListView.swift.)
│
├── Views
│   │   (Contient les écrans principaux de l'application.
│   │   Une View correspond à une page complète affichée à l'utilisateur.)
│   │
│   ├── ArtworkListView.swift
│   │   (Écran principal de la V1.
│   │   Récupère les œuvres depuis MockData.swift.
│   │   Affiche chaque œuvre avec ArtworkRowView.swift.
│   │   Permet d'ouvrir ArtworkDetailView.swift grâce à NavigationLink.)
│   │
│   └── ArtworkDetailView.swift
│       (Écran affichant le détail complet d'une œuvre.
│       Reçoit un objet Artwork depuis ArtworkListView.swift.
│       Utilise DetailHeaderImageView.swift pour afficher la grande image.
│       Utilise ArtworkInfoRowView.swift pour afficher les informations.
│       Utilise ArtworkMapView.swift pour afficher la localisation sur une carte.)
│
├── Components
│   │   (Contient les composants SwiftUI réutilisables.
│   │   Ces composants évitent de répéter le même code dans plusieurs vues.)
│   │
│   ├── ArtworkRowView.swift
│   │   (Affiche une œuvre dans la liste.
│   │   Reçoit un objet Artwork.
│   │   Affiche l'image, le titre, la ville et une icône de navigation.
│   │   Utilisé par ArtworkListView.swift.)
│   │
│   ├── DetailHeaderImageView.swift
│   │   (Affiche la grande image de l'œuvre.
│   │   Vérifie si l'image existe dans Assets.xcassets.
│   │   Si elle est absente, affiche automatiquement l'image "placeholder".
│   │   Utilisé par ArtworkDetailView.swift.)
│   │
│   ├── ArtworkInfoRowView.swift
│   │   (Affiche une information sous forme "Titre : Valeur".
│   │   Exemple : Type : Mural, Auteur : KAN, Date : 2022.
│   │   Utilisé par ArtworkDetailView.swift.)
│   │
│   └── ArtworkMapView.swift
│       (Affiche une carte interactive avec MapKit.
│       Positionne un marqueur sur les coordonnées GPS de l'œuvre.
│       Reçoit un objet Artwork.
│       Utilisé par ArtworkDetailView.swift.)
│
└── App
    │   (Contient les fichiers générés au démarrage du projet SwiftUI.)
    │
    ├── Assets.xcassets
    │   (Contient les images des œuvres, l'image "placeholder",
    │   l'icône de l'application ainsi que les ressources graphiques.
    │   Les images sont appelées avec Image(artwork.imageName).)
    │
    ├── ContentView.swift
    │   (Vue affichée au lancement de l'application.
    │   Charge ArtworkListView.swift comme écran principal.)
    │
    └── UrbanCanvasApp.swift
        (Point d'entrée de l'application SwiftUI.
        Lance ContentView.swift.)
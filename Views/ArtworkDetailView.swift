import Foundation
import SwiftUI

// Écran qui affiche le détail complet d'une œuvre.
struct ArtworkDetailView: View {

    // Œuvre sélectionnée depuis la liste.
    let artwork: Artwork

    var body: some View {

        // Permet de faire défiler le contenu sur iPhone.
        ScrollView {

            // Organise l'écran de haut en bas.
            VStack(alignment: .leading, spacing: 4) {

                // Grande image affichée tout en haut.
                DetailHeaderImageView(imageName: artwork.imageName)

                // Zone qui contient le texte et les informations.
                VStack(alignment: .leading, spacing: 6) {

                    // Titre de l'œuvre.
                    Text(artwork.title)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)

                    // Description de l'œuvre.
                    Text(artwork.description)
                        .font(.caption)
                        .lineSpacing(3)
                        .padding(.bottom, 10)
                    // Informations détaillées.
                    ArtworkInfoRowView(title: "Type", value: artwork.type.rawValue)
                    ArtworkInfoRowView(title: "Condition", value: artwork.condition)
                    ArtworkInfoRowView(title: "Date", value: artwork.date)
                    ArtworkInfoRowView(title: "Auteur", value: artwork.artist.name)
                    ArtworkInfoRowView(title: "Localisation", value: artwork.location)

                    // Carte affichant l'emplacement de l'œuvre.
                    ArtworkMapView(artwork: artwork)
                }
                .padding()
            }
        }
        // Permet à l'image de commencer tout en haut de l'écran,
        // comme sur la maquette.
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    NavigationStack {
        ArtworkDetailView(artwork: MockData.artworks[0])
    }
}

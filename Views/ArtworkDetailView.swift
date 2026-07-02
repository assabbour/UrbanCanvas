import Foundation
import SwiftUI

// Écran qui affiche le détail complet d'une œuvre.
struct ArtworkDetailView: View {

    // oeuvre sélectionnée depuis la liste.
    let artwork: Artwork

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // Image principale de l'œuvre.
                DetailHeaderImageView(imageName: artwork.imageName)

                VStack(alignment: .leading, spacing: 12) {

                    // Titre de l'œuvre.
                    Text(artwork.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.orange)

                    // Description de l'œuvre.
                    Text(artwork.description)
                        .font(.body)

                    Divider()

                    // Informations complémentaires.
                    ArtworkInfoRowView(title: "Type", value: artwork.type.rawValue)
                    ArtworkInfoRowView(title: "Condition", value: artwork.condition)
                    ArtworkInfoRowView(title: "Date", value: artwork.date)
                    ArtworkInfoRowView(title: "Auteur", value: artwork.artist.name)
                    ArtworkInfoRowView(title: "Localisation", value: artwork.location)
                    
                    // Carte affichant la position de l'œuvre.
                    ArtworkMapView(artwork: artwork)
                }
                .padding()
            }
        }
        .navigationTitle(artwork.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ArtworkDetailView(artwork: MockData.artworks[0])
    }
}

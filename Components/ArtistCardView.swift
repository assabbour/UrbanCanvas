
import Foundation
import SwiftUI

// Carte réutilisable affichant les informations d'un artiste.
struct ArtistCardView: View {

    // Artiste affiché.
    let artist: Artist

    var body: some View {

        VStack(alignment: .leading, spacing: 12) {

            // Photo de l'artiste.
            Image(artist.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .frame(maxWidth: .infinity)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 20))

            VStack(alignment: .leading, spacing: 6) {

                Text(artist.name)
                    .font(.title3)
                    .fontWeight(.bold)

                Text(artist.city)
                    .foregroundStyle(.secondary)

                Text("Age : \(artist.age)")
                    .font(.caption)

                Text("Origin : \(artist.origin)")
                    .font(.caption)

                Text("Style : \(artist.style)")
                    .font(.caption)
            }

            Spacer()

            Link(
                "Visit website",
                destination: URL(string: artist.websiteURL)!
            )
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background(Color.orange)
            .foregroundStyle(.white)
            .clipShape(Capsule())

        }
        .padding()
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(radius: 6)
    }
}

#Preview {

    ArtistCardView(
        artist: MockData.c215
    )

}

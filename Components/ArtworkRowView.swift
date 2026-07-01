import Foundation
import SwiftUI

// Ligne réutilisable pour afficher une œuvre dans une liste.
struct ArtworkRowView: View {

    // Œuvre reçue depuis la liste.
    let artwork: Artwork

    var body: some View {
        HStack(spacing: 12) {

            Image(artwork.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 52, height: 52)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(artwork.title)
                    .font(.headline)

                Text(artwork.city)
                    .font(.caption)
                    .foregroundStyle(.gray)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundStyle(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ArtworkRowView(artwork: MockData.artworks[0])
}

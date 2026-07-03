import Foundation
import SwiftUI

// Carte d’aperçu affichée en bas de la carte.
// Elle montre l’œuvre sélectionnée avec son image, son titre et sa description.
struct ArtworkPreviewCardView: View {

    // Œuvre affichée dans la carte.
    let artwork: Artwork

    var body: some View {
        VStack(spacing: 0) {

            HStack {
                Button {
                    // Action fermeture plus tard.
                } label: {
                    Image(systemName: "xmark")
                }

                Spacer()

                Text(artwork.title)
                    .font(.headline)

                Spacer()

                Button {
                    // Action navigation détail plus tard.
                } label: {
                    Image(systemName: "arrow.right")
                }
            }
            .padding()

            Image(artwork.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .clipped()

            Text(artwork.description)
                .font(.body)
                .padding()
        }
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 28))
        .padding()
    }
}

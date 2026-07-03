/*import Foundation
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
*/


import Foundation
import SwiftUI

struct ArtworkPreviewCardView: View {

    let artwork: Artwork

    // Action envoyée par la vue parent pour fermer la carte.
    let onClose: () -> Void

    var body: some View {
        VStack(spacing: 0) {

            HStack {
                Button {
                    onClose()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .foregroundStyle(.black)
                        .padding(12)
                        .background(.thinMaterial)
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)

                Spacer()

                Text(artwork.title)
                    .font(.headline)

                Spacer()

                Button {
                    // Navigation détail plus tard.
                } label: {
                    Image(systemName: "arrow.right")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .padding(12)
                        .background(.orange)
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal)
            .padding(.vertical, 10)

            Image(artwork.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 170)
                .clipped()

            Text(artwork.description)
                .font(.body)
                .padding()
        }
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 28))
        .padding(.horizontal, 16)
        .padding(.bottom, 20)
    }
}

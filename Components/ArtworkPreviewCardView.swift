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

// Carte d'aperçu affichée en bas de la carte.
struct ArtworkPreviewCardView: View {

    // Œuvre affichée dans la carte.
    let artwork: Artwork

    // Action appelée lorsque l'utilisateur ferme la carte.
    let onClose: () -> Void

    var body: some View {

        VStack(spacing: 0) {

            HStack {

                // Bouton permettant de fermer la carte.
                Button {

                    print("CROIX CLIQUÉE")
                    onClose()

                } label: {

                    Image(systemName: "xmark")
                        .font(.title3)
                        .foregroundStyle(.black)
                        .frame(width: 50, height: 50)
                        .background(.white.opacity(0.8))
                        .clipShape(Circle())

                }
                .buttonStyle(.plain)

                Spacer()

                Text(artwork.title)
                    .font(.headline)

                Spacer()

                // Navigation vers le détail (à venir).
                Button {

                } label: {

                    Image(systemName: "arrow.right")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .frame(width: 50, height: 50)
                        .background(.orange)
                        .clipShape(Circle())

                }
                .buttonStyle(.plain)
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

/*import SwiftUI

// Carte d'aperçu affichée en bas de la carte.
struct ArtworkPreviewCardView: View {

    let artwork: Artwork
    let onClose: () -> Void
    let onOpenDetail: () -> Void

    var body: some View {
        VStack(spacing: 0) {

            HStack {

                Button {
                    print(" Croix cliquée dans ArtworkPreviewCardView")
                    onClose()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .foregroundStyle(.black)
                        .frame(width: 50, height: 50)
                        .background(.white.opacity(0.85))
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)

                Spacer()

                Text(artwork.title)
                    .font(.headline)

                Spacer()

                Button {
                    print(" détail cliquée dans ArtworkPreviewCardView")
                    onOpenDetail()
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
        .contentShape(Rectangle())
        .allowsHitTesting(true)
    }
}
*/
import SwiftUI

// Carte d'aperçu affichée en bas de la carte.
struct ArtworkPreviewCardView: View {

    // Œuvre affichée dans la carte d'aperçu.
    let artwork: Artwork

    // Action appelée quand on ferme la carte.
    let onClose: () -> Void

    // Action appelée quand on ouvre la fiche détail.
    let onOpenDetail: () -> Void

    var body: some View {

        // ZStack permet de superposer le contenu et les boutons.
        ZStack(alignment: .top) {

            // Contenu principal de la carte.
            VStack(spacing: 0) {

                // Espace réservé en haut pour les boutons.
                Spacer()
                    .frame(height: 64)

                // Image de l'œuvre.
                Image(artwork.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 180)
                    .clipped()

                // Description courte de l'œuvre.
                Text(artwork.description)
                    .font(.body)
                    .padding()
            }

            // Barre du haut avec la croix, le titre et la flèche.
            HStack {

                // Bouton fermer.
                Button {
                    print("❌ Croix cliquée dans ArtworkPreviewCardView")
                    onClose()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .foregroundStyle(.black)
                        .frame(width: 50, height: 50)
                        .background(.white.opacity(0.95))
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)
                .zIndex(20)

                Spacer()

                // Titre de l'œuvre affichée.
                Text(artwork.title)
                    .font(.headline)
                    .lineLimit(1)

                Spacer()

                // Bouton ouvrir la fiche détail.
                Button {
                    print("➡️ Détail cliqué dans ArtworkPreviewCardView : \(artwork.title)")
                    onOpenDetail()
                } label: {
                    Image(systemName: "arrow.right")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .frame(width: 50, height: 50)
                        .background(.orange)
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)
                .zIndex(20)
            }
            .padding()
            .zIndex(20)
        }

        // Fond de la carte.
        .background(.ultraThinMaterial)

        // Coins arrondis de la carte.
        .clipShape(RoundedRectangle(cornerRadius: 28))

        // Espace autour de la carte.
        .padding()

        // Force la carte à recevoir les interactions.
        .allowsHitTesting(true)
    }
}

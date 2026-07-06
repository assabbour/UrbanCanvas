import SwiftUI

// Carte d'aperçu affichée en bas de la carte.
struct ArtworkPreviewCardView: View {

    let artwork: Artwork
    let onClose: () -> Void
    let onOpenDetail: () -> Void

    var body: some View {
        VStack(spacing: 0) {

            HStack {

                Button {
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

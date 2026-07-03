import SwiftUI

struct FilterPopupView: View {

    let selectedArtType: ArtType?
    let onSelect: (ArtType?) -> Void
    let onClose: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            Text("Liste des filtres")
                .font(.headline)

            Text("Choisissez un type d’art")
                .font(.caption)
                .foregroundStyle(.gray)

            FilterOptionButtonView(title: "Tous", isSelected: selectedArtType == nil) {
                onSelect(nil)
                onClose()
            }

            FilterOptionButtonView(title: "Mural", isSelected: selectedArtType == .mural) {
                onSelect(.mural)
                onClose()
            }

            FilterOptionButtonView(title: "Graffiti", isSelected: selectedArtType == .graffiti) {
                onSelect(.graffiti)
                onClose()
            }

            FilterOptionButtonView(title: "Collage", isSelected: selectedArtType == .collage) {
                onSelect(.collage)
                onClose()
            }

            FilterOptionButtonView(title: "Installation", isSelected: selectedArtType == .installation) {
                onSelect(.installation)
                onClose()
            }
        }
        .padding(16)
        .frame(width: 260)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .shadow(radius: 10)
    }
}

#Preview {
    FilterPopupView(
        selectedArtType: nil,
        onSelect: { _ in },
        onClose: {}
    )
}

import SwiftUI

// Popup affichée au-dessus de la liste.
// Elle contient les choix de filtres.
struct FilterPopupView: View {

    let onClose: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            Text("Liste des filtres")
                .font(.headline)

            Text("Choisissez un type d’art")
                .font(.caption)
                .foregroundStyle(.gray)

            FilterOptionButtonView(title: "Tous", isSelected: true) {
                onClose()
            }

            FilterOptionButtonView(title: "Mural", isSelected: false) {
                onClose()
            }

            FilterOptionButtonView(title: "Graffiti", isSelected: false) {
                onClose()
            }

            FilterOptionButtonView(title: "Collage", isSelected: false) {
                onClose()
            }

            FilterOptionButtonView(title: "Installation", isSelected: false) {
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
    FilterPopupView {}
}

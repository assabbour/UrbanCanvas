import SwiftUI

// Barre de navigation flottante affichée en bas de l'écran.
// Elle permet de changer entre la section Œuvres et la section Auteurs.
struct FloatingTabBarView: View {

    // Onglet actuellement sélectionné.
    @Binding var selectedTab: MainTab

    var body: some View {
        HStack(spacing: 24) {

            Button {
                selectedTab = .artworks
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: "photo.on.rectangle")
                    Text("Œuvres")
                        .font(.caption)
                }
            }

            Button {
                selectedTab = .artists
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: "person.circle")
                    Text("Auteurs")
                        .font(.caption)
                }
            }
        }
        .padding(.horizontal, 28)
        .padding(.vertical, 12)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        .shadow(radius: 8)
    }
}

#Preview {
    FloatingTabBarView(
        selectedTab: .constant(.artworks)
    )
}

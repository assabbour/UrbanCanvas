import SwiftUI

// Vue racine de l'application.
// Elle gère la navigation principale entre les grandes sections.
struct MainView: View {

    // Onglet actuellement sélectionné dans la barre du bas.
    @State private var selectedTab: MainTab = .artworks

    var body: some View {
        ZStack {

            // Contenu principal selon l'onglet sélectionné.
            switch selectedTab {

            case .artworks:
                ArtworkListView()

            case .artists:
                ArtistListView()
            }

            // Barre flottante affichée en bas de l'application.
            VStack {
                Spacer()

                FloatingTabBarView(selectedTab: $selectedTab)
                    .padding(.bottom, 16)
            }
        }
    }
}

#Preview {
    MainView()
}

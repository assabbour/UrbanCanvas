import SwiftUI

// Vue racine de l'application.
// Elle gère la navigation principale entre les grandes sections.
struct MainView: View {

    // Onglet actuellement sélectionné dans la barre du bas.
    @State private var selectedTab: MainTab = .artworks

    var body: some View {

        // le contenu principal
        // ainsi que la barre de navigation flottante.
        ZStack {

            // Contenu principal selon l'onglet sélectionné.
            switch selectedTab {

            case .artworks:
                // Affiche la liste des œuvres.
                ArtworkListView()

            case .mission:
                // Affiche l'écran des missions.
                MissionView()

            case .artists:
                // Affiche la liste des artistes.
                ArtistListView()
            }
        }

        // La barre flottante est affichée en superposition.
        // overlay évite que la vue principale soit recouverte
        // par un VStack occupant toute la hauteur de l'écran.
        .overlay(alignment: .bottom) {

            FloatingTabBarView(selectedTab: $selectedTab)
                .padding(.bottom, 16)
        }
    }
}

#Preview {
    MainView()
}

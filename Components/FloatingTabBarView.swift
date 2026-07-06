import SwiftUI

// Barre d'onglets flottante affichée en bas de l'application.
struct FloatingTabBarView: View {

    // Onglet actuellement sélectionné.
    // Le @Binding permet de modifier l'onglet depuis cette vue.
    @Binding var selectedTab: MainTab

    var body: some View {

        // Conteneur horizontal pour afficher les boutons d'onglets.
        HStack(spacing: 8) {

            // Bouton vers l'écran des œuvres.
            tabButton(
                title: "Œuvres",
                icon: "photo.on.rectangle",
                tab: .artworks
            )

            // Bouton vers l'écran mission.
            tabButton(
                title: "Mission",
                icon: "target",
                tab: .mission
            )

            // Bouton vers l'écran des auteurs.
            tabButton(
                title: "Auteurs",
                icon: "person.circle",
                tab: .artists
            )
        }
        // Espace intérieur de la barre.
        .padding(6)

        // Fond avec effet flou léger.
        .background(.ultraThinMaterial)

        // Forme arrondie en capsule.
        .clipShape(Capsule())

        // Ombre pour donner un effet flottant.
        .shadow(radius: 8)
    }

    // Fonction réutilisable pour créer un bouton d'onglet.
    private func tabButton(title: String, icon: String, tab: MainTab) -> some View {

        Button {
            // Au clic, on change l'onglet sélectionné.
            selectedTab = tab

        } label: {

            // Contenu vertical du bouton : icône + texte.
            VStack(spacing: 4) {

                // Icône SF Symbols du bouton.
                Image(systemName: icon)
                    .font(.system(size: 18))

                // Titre affiché sous l'icône.
                Text(title)
                    .font(.caption2)
                    .fontWeight(.semibold)
            }
            // Couleur différente si l'onglet est sélectionné.
            .foregroundStyle(selectedTab == tab ? .orange : .black)

            // Taille fixe du bouton.
            .frame(width: 82, height: 52)

            // Fond orange clair si l'onglet est actif.
            .background(
                selectedTab == tab
                ? Color.orange.opacity(0.15)
                : Color.clear
            )

            // Bouton arrondi.
            .clipShape(Capsule())
        }
        // Supprime le style bleu par défaut du bouton.
        .buttonStyle(.plain)
    }
}

/*import SwiftUI

struct FloatingTabBarView: View {

    @Binding var selectedTab: MainTab

    var body: some View {
        HStack(spacing: 8) {
            tabButton(title: "Œuvres", icon: "photo.on.rectangle", tab: .artworks)
            tabButton(title: "Auteurs", icon: "person.circle", tab: .artists)
        }
        .padding(6)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        .shadow(radius: 8)
    }

    private func tabButton(title: String, icon: String, tab: MainTab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(spacing: 3) {
                Image(systemName: icon)
                    .font(.system(size: 18))

                Text(title)
                    .font(.caption2)
                    .fontWeight(.semibold)
            }
            .foregroundStyle(selectedTab == tab ? .orange : .black)
            .frame(width: 82, height: 52)
            .background(
                selectedTab == tab
                ? Color.orange.opacity(0.15)
                : Color.clear
            )
            .clipShape(Capsule())
        }
        .buttonStyle(.plain)
    }
}
*/

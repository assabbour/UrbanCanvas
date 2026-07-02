import SwiftUI

// Écran principal qui affiche les œuvres.
// Il permet aussi de choisir entre le mode Liste et le mode Carte.
struct ArtworkListView: View {

    // Contrôle l'affichage de la popup des filtres.
    @State private var isFilterPresented = false

    // Mode d'affichage sélectionné : liste ou carte.
    @State private var selectedMode: DisplayMode = .list

    // Données statiques utilisées par la liste.
    let artworks = MockData.artworks

    var body: some View {
        NavigationStack {
            ZStack {

                VStack(alignment: .leading, spacing: 12) {

                    // Ligne du haut : bouton Liste/Carte + bouton filtre.
                    // Barre d'outils réutilisable : Liste/Carte + filtre.
                    ArtworkTopBarView(
                        selectedMode: $selectedMode,
                        onFilterTap: {
                            isFilterPresented.toggle()
                        }
                    )

                    // Titre de l'écran.
                    Text("Liste des Street arts")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)

                    // Liste des œuvres.
                    List(artworks) { artwork in
                        NavigationLink {
                            ArtworkDetailView(artwork: artwork)
                        } label: {
                            ArtworkRowView(artwork: artwork)
                        }
                    }
                    .listStyle(.plain)
                }

                // Popup de filtres affichée au-dessus de la liste.
                if isFilterPresented {
                    Color.black.opacity(0.25)
                        .ignoresSafeArea()
                        .onTapGesture {
                            isFilterPresented = false
                        }

                    FilterPopupView {
                        isFilterPresented = false
                    }
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .topTrailing
                    )
                    .padding(.trailing, 20)
                    .offset(y: 25)
                }
            }
        }
    }
}

#Preview {
    ArtworkListView()
}

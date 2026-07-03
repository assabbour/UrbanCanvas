import SwiftUI

// Écran principal qui affiche les œuvres.
// Il permet de choisir entre le mode Liste et le mode Carte.
struct ArtworkListView: View {

    // Contrôle l'affichage de la popup des filtres.
    @State private var isFilterPresented = false

    // Mode affiché actuellement : liste ou carte.
    @State private var selectedMode: DisplayMode = .list

    // Données statiques utilisées dans la liste et la carte.
    let artworks = MockData.artworks

    var body: some View {
        NavigationStack {
            ZStack {

                // Si on est en mode Liste.
                if selectedMode == .list {

                    VStack(alignment: .leading, spacing: 12) {

                        // Barre du haut : Liste / Carte + filtre.
                        ArtworkTopBarView(
                            selectedMode: $selectedMode,
                            onFilterTap: {
                                isFilterPresented.toggle()
                            }
                        )

                        // Titre seulement pour la liste.
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

                } else {

                    // Si on est en mode Carte.
                    ArtworkMapScreenView(
                        selectedMode: $selectedMode,
                        isFilterPresented: $isFilterPresented,
                        artworks: artworks
                    )
                }

                // Popup de filtres disponible sur Liste et Carte.
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

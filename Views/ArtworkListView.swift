/*import SwiftUI

// Écran principal qui affiche les œuvres.
// Il permet de choisir entre le mode Liste et le mode Carte.
struct ArtworkListView: View {
    // Type d’art sélectionné dans le filtre.
    // nil = Tous les types.
    @State private var selectedArtType: ArtType? = nil

    // Contrôle l'affichage de la popup des filtres.
    @State private var isFilterPresented = false

    // Mode affiché actuellement : liste ou carte.
    @State private var selectedMode: DisplayMode = .list

    // Données statiques utilisées dans la liste et la carte.
    let artworks = MockData.artworks
    // Liste filtrée affichée dans la Liste et dans la Carte.
    var filteredArtworks: [Artwork] {
        guard let selectedArtType else {
            return artworks
        }

        return artworks.filter { artwork in
            artwork.type == selectedArtType
        }
    }

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
                        List(filteredArtworks) { artwork in
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
*/


import SwiftUI

struct ArtworkListView: View {

    @State private var selectedArtType: ArtType? = nil
    @State private var isFilterPresented = false
    @State private var selectedMode: DisplayMode = .list

    let artworks = MockData.artworks

    // Liste filtrée utilisée par la liste ET par la carte.
    var filteredArtworks: [Artwork] {
        guard let selectedArtType else {
            return artworks
        }

        return artworks.filter { artwork in
            artwork.type == selectedArtType
        }
    }

    var body: some View {
        NavigationStack {
            ZStack {

                if selectedMode == .list {

                    VStack(alignment: .leading, spacing: 12) {

                        ArtworkTopBarView(
                            selectedMode: $selectedMode,
                            onFilterTap: {
                                isFilterPresented.toggle()
                            }
                        )

                        Text("Liste des Street arts")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal)

                        List(filteredArtworks) { artwork in
                            NavigationLink {
                                ArtworkDetailView(artwork: artwork)
                            } label: {
                                ArtworkRowView(artwork: artwork)
                            }
                        }
                        .listStyle(.plain)
                    }

                } else {

                    ArtworkMapScreenView(
                        selectedMode: $selectedMode,
                        isFilterPresented: $isFilterPresented,
                        artworks: filteredArtworks
                    )
                }

                if isFilterPresented {
                    Color.black.opacity(0.25)
                        .ignoresSafeArea()
                        .onTapGesture {
                            isFilterPresented = false
                        }

                    FilterPopupView(
                        selectedArtType: selectedArtType,
                        onSelect: { type in
                            selectedArtType = type
                        },
                        onClose: {
                            isFilterPresented = false
                        }
                    )
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

import SwiftUI

// Écran qui affiche toutes les œuvres disponibles.
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

                VStack(alignment: .leading, spacing: 16) {
                    // Boutons Liste / Carte.
                    DisplayModePickerView(selectedMode: $selectedMode)
                        .padding(.horizontal)

                    HStack {
                        Text("Liste des Street arts")
                            .font(.title)
                            .fontWeight(.bold)

                        Spacer()

                        FilterButtonView {
                            isFilterPresented.toggle()
                        }
                    }
                    .padding(.horizontal)

                    List(artworks) { artwork in
                        NavigationLink {
                            ArtworkDetailView(artwork: artwork)
                        } label: {
                            ArtworkRowView(artwork: artwork)
                        }
                    }
                    .listStyle(.plain)
                }

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

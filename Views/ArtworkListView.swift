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
                        ).padding(.top, 8)
                            .zIndex(2)
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

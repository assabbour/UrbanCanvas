import SwiftUI
import MapKit

// Écran affichant toutes les œuvres sur une carte.
struct ArtworkMapScreenView: View {

    // Mode actuellement sélectionné (Liste ou Carte).
    @Binding var selectedMode: DisplayMode

    // Permet d'afficher ou masquer la popup des filtres.
    @Binding var isFilterPresented: Bool

    // Liste des œuvres affichées sur la carte.
    let artworks: [Artwork]

    // Œuvre actuellement sélectionnée.
    @State private var selectedArtwork: Artwork?

    // Œuvre utilisée pour ouvrir la vue détail.
    @State private var artworkToShowDetail: Artwork?

    // Position initiale de la carte (Marseille).
    @State private var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 43.2965,
                longitude: 5.3756
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.08,
                longitudeDelta: 0.08
            )
        )
    )

    var body: some View {

        ZStack(alignment: .top) {

            // Carte interactive.
            Map(position: $cameraPosition) {

                // Création d'un marqueur pour chaque œuvre.
                ForEach(artworks) { artwork in

                    Annotation(
                        artwork.title,
                        coordinate: CLLocationCoordinate2D(
                            latitude: artwork.latitude,
                            longitude: artwork.longitude
                        )
                    ) {

                        // Marqueur réutilisable.
                        ArtworkMapMarkerView()

                            // Sélection de l'œuvre au toucher.
                            .onTapGesture {
                                selectedArtwork = artwork
                            }

                    }

                }

            }
            .ignoresSafeArea()

            // Barre supérieure réutilisable.
            ArtworkTopBarView(
                selectedMode: $selectedMode,
                onFilterTap: {
                    isFilterPresented.toggle()
                }
            )
            .zIndex(2)

        }

        // Carte d'aperçu affichée lorsqu'une œuvre est sélectionnée.
        .overlay(alignment: .bottom) {

            if let selectedArtwork {

                ArtworkPreviewCardView(

                    artwork: selectedArtwork,

                    // Ferme l'aperçu.
                    onClose: {
                        self.selectedArtwork = nil
                    },

                    // Ouvre la fiche détail.
                    onOpenDetail: {

                        // Enregistre l'œuvre à afficher.
                        self.artworkToShowDetail = selectedArtwork

                        // Ferme l'aperçu.
                        self.selectedArtwork = nil
                    }
                )

                // Laisse de la place pour la barre d'onglets.
                .padding(.bottom, 90)

                // Place la carte au-dessus de la Map.
                .zIndex(10)

            }

        }

        // Navigation vers la fiche détail.
        .navigationDestination(item: $artworkToShowDetail) { artwork in

            ArtworkDetailView(
                artwork: artwork
            )

        }

    }

}

#Preview {

    NavigationStack {

        ArtworkMapScreenView(
            selectedMode: .constant(.map),
            isFilterPresented: .constant(false),
            artworks: MockData.artworks
        )

    }

}

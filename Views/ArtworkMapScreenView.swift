import SwiftUI
import MapKit

struct ArtworkMapScreenView: View {

    @Binding var selectedMode: DisplayMode
    @Binding var isFilterPresented: Bool

    // Liste des œuvres affichées sur la carte.
    let artworks: [Artwork]

    // Œuvre actuellement sélectionnée.
    @State private var selectedArtwork: Artwork?

    // Position initiale de la carte.
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

                ForEach(artworks) { artwork in

                    Annotation(
                        artwork.title,
                        coordinate: CLLocationCoordinate2D(
                            latitude: artwork.latitude,
                            longitude: artwork.longitude
                        )
                    ) {

                        Button {

                            // Sélection de l'œuvre.
                            selectedArtwork = artwork

                        } label: {

                            // Composant réutilisable représentant un marqueur.
                            ArtworkMapMarkerView()

                        }
                        .buttonStyle(.plain)

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
        .overlay(alignment: .bottom) {

            // Carte d'aperçu affichée uniquement
            // lorsqu'une œuvre est sélectionnée.
            if let selectedArtwork {

                ArtworkPreviewCardView(
                    artwork: selectedArtwork,
                    onClose: {
                        self.selectedArtwork = nil
                    }
                )

            }

        }

    }

}

#Preview {

    ArtworkMapScreenView(
        selectedMode: .constant(.map),
        isFilterPresented: .constant(false),
        artworks: MockData.artworks
    )

}

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
                                print(" Marqueur cliqué : \(artwork.title)")
                                selectedArtwork = artwork
                            }
                    }
                }
            }
            .ignoresSafeArea()
            
            // Quand une carte d'aperçu est ouverte,
            // on désactive les clics sur la carte pour éviter qu'elle bloque les boutons.
            .allowsHitTesting(selectedArtwork == nil)

            // Barre supérieure affichée au-dessus de la carte.
            ArtworkTopBarView(
                selectedMode: $selectedMode,
                onFilterTap: {
                    isFilterPresented.toggle()
                }
            )
            .padding(.top, 8)
            .zIndex(2)
        }

        // Cache la barre de navigation en mode carte.
        // Ça évite que SwiftUI pousse la top bar vers le bas.
        .toolbar(.hidden, for: .navigationBar)

        // Carte d'aperçu affichée lorsqu'une œuvre est sélectionnée.
        .overlay(alignment: .bottom) {

            if let selectedArtwork {

                ArtworkPreviewCardView(
                    artwork: selectedArtwork,
                    onClose: {
                        self.selectedArtwork = nil
                    },
                    onOpenDetail: {
                        self.artworkToShowDetail = selectedArtwork
                        self.selectedArtwork = nil
                    }
                )
                .padding(.bottom, 90)
                .zIndex(10)
            }
        }

        // Navigation vers la fiche détail.
        .navigationDestination(item: $artworkToShowDetail) { artwork in
            ArtworkDetailView(artwork: artwork)
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

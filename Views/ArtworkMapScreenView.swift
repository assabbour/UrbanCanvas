import Foundation
import SwiftUI
import MapKit

// Écran qui affiche toutes les œuvres sur une grande carte.
struct ArtworkMapScreenView: View {

    // Liste des œuvres à afficher sur la carte.
    let artworks: [Artwork]

    // Position de départ de la carte centrée sur Marseille.
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
        Map(position: $cameraPosition) {

            // Ajoute un marqueur pour chaque œuvre.
            ForEach(artworks) { artwork in
                Marker(
                    artwork.title,
                    coordinate: CLLocationCoordinate2D(
                        latitude: artwork.latitude,
                        longitude: artwork.longitude
                    )
                )
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ArtworkMapScreenView(artworks: MockData.artworks)
}

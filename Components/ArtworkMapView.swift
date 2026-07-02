import SwiftUI
import MapKit

// Composant réutilisable pour afficher la position d'une œuvre sur une carte.
struct ArtworkMapView: View {

    // Œuvre dont on veut afficher la localisation.
    let artwork: Artwork

    // Position initiale de la carte centrée sur l'œuvre.
    private var cameraPosition: MapCameraPosition {
        .region(
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: artwork.latitude,
                    longitude: artwork.longitude
                ),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.01,
                    longitudeDelta: 0.01
                )
            )
        )
    }

    var body: some View {
        Map(initialPosition: cameraPosition) {
            Marker(
                artwork.title,
                coordinate: CLLocationCoordinate2D(
                    latitude: artwork.latitude,
                    longitude: artwork.longitude
                )
            )
        }
        .frame(height: 130)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    ArtworkMapView(artwork: MockData.artworks[0])
}

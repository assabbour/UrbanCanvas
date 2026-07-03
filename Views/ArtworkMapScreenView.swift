import SwiftUI
import MapKit

struct ArtworkMapScreenView: View {

    @Binding var selectedMode: DisplayMode
    @Binding var isFilterPresented: Bool

    let artworks: [Artwork]

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

            Map(position: $cameraPosition) {
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

            ArtworkTopBarView(
                selectedMode: $selectedMode,
                onFilterTap: {
                    isFilterPresented.toggle()
                }
            )
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

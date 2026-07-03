import Foundation
import Testing
@testable import urban_canvas

struct ArtistCardViewTests {

    // Vérifie que la carte artiste peut être créée.
    @Test("La carte artiste peut être créée")
    func artistCardCanBeCreated() {

        let view = ArtistCardView(
            artist: MockData.kan
        )

        #expect(view.artist.name == "KAN DMV")
    }
}

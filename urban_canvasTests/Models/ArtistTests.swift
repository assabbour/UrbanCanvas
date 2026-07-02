import Testing
@testable import urban_canvas

struct ArtistTests {

    // Vérifie que chaque artiste possède un nom.
    @Test("Tous les artistes possèdent un nom")
    func artistsShouldHaveName() {

        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]

        for artist in artists {
            #expect(!artist.name.isEmpty)
        }
    }
}

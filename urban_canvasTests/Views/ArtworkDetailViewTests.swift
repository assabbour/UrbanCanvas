import Testing
@testable import urban_canvas

struct ArtworkDetailViewTests {

    @Test("La vue détail peut être créée")
    func artworkDetailViewCanBeCreated() {

        // Vérifie que la vue détail peut être créée avec une œuvre.
        let artwork = MockData.artworks[0]
        let view = ArtworkDetailView(artwork: artwork)

        #expect(view.artwork.title == artwork.title)
    }
    
    
    // Vérifie que la vue détail reçoit correctement l'artiste.
    @Test("La vue détail reçoit le bon artiste")
    func artworkDetailViewShouldReceiveArtist() {
        let artwork = MockData.artworks[0]
        let view = ArtworkDetailView(artwork: artwork)
        #expect(view.artwork.artist.name == artwork.artist.name)
    }
}

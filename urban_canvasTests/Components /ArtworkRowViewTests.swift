import Testing
@testable import urban_canvas

struct ArtworkRowViewTests {
    
    // Vérifie que le composant peut être créé avec une œuvre.
    @Test("Le composant ligne peut être créé")
    func artworkRowViewCanBeCreated() {

        let artwork = MockData.artworks[0]
        let view = ArtworkRowView(artwork: artwork)

        #expect(view.artwork.title == artwork.title)
    }
}

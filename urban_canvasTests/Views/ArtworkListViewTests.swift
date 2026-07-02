import Testing
@testable import urban_canvas

struct ArtworkListViewTests {

    @Test("La vue liste peut être créée")
    func artworkListViewCanBeCreated() {

        // Vérifie que la vue principale de liste peut être instanciée.
        let view = ArtworkListView()
        #expect(view.artworks.count == MockData.artworks.count)
    }
}

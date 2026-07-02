import Testing
@testable import urban_canvas

struct ArtworkListViewTests {

    @Test("La vue liste peut être créée")
    func artworkListViewCanBeCreated() {

        // Vérifie que la vue principale de liste peut être instanciée.
        let view = ArtworkListView()
        #expect(view.artworks.count == MockData.artworks.count)
    }
    
    // Vérifie que la vue affiche les données provenant de MockData.
    @Test("La vue liste utilise les données de MockData")
    func artworkListViewShouldUseMockData() {
        let view = ArtworkListView()

        #expect(!view.artworks.isEmpty)
    }
}

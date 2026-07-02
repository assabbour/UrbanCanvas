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
    
    // Vérifie que la liste contient exactement les œuvres de MockData.
    @Test("La vue liste contient le bon nombre d'œuvres")
    func artworkListViewShouldContainExpectedArtworkCount() {
        let view = ArtworkListView()

        #expect(view.artworks.count == MockData.artworks.count)
    }
    
    
    // Vérifie que la première œuvre affichée dans la liste possède un titre.
    @Test("La première œuvre affichée possède un titre")
    func firstArtworkShouldHaveTitle() {
        let view = ArtworkListView()
        let firstArtwork = view.artworks[0]

        #expect(!firstArtwork.title.isEmpty)
    }
}

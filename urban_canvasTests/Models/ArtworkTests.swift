import Testing
@testable import urban_canvas

struct ArtworkTests {

    @Test("Toutes les œuvres possèdent un titre")
    func artworkShouldHaveTitle() {

        for artwork in MockData.artworks {
            #expect(!artwork.title.isEmpty)
        }
    }
}

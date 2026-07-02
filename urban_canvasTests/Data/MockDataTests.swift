import Testing
@testable import urban_canvas

struct MockDataTests {

    @Test("La liste des œuvres ne doit pas être vide")
    func artworksShouldNotBeEmpty() {

        // Vérifie que la liste des œuvres contient au moins un élément.
        #expect(!MockData.artworks.isEmpty)
    }
}

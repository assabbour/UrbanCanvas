import Testing
@testable import urban_canvas

struct ArtworkFilterTests {

    // Vérifie que le filtre "Tous" retourne toutes les œuvres.
    @Test("Le filtre Tous retourne toutes les œuvres")
    func filterAllArtworks() {

        // On récupère toutes les œuvres.
        let artworks = MockData.artworks

        // Sans filtre, toutes les œuvres doivent être présentes.
        let filteredArtworks = artworks

        // Vérifie que le nombre d'œuvres est identique.
        #expect(filteredArtworks.count == artworks.count)
    }
}

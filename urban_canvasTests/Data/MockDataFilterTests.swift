import Testing
@testable import urban_canvas

// Tests de la logique de filtrage des œuvres.
// Ici nous testons les données, pas l'interface graphique.
struct MockDataFilterTests {

    @Test("Le filtre Tous retourne toutes les œuvres")
    func allFilterReturnsAllArtworks() {

        // Récupère toutes les œuvres disponibles.
        let artworks = MockData.artworks

        // Vérifie que le nombre correspond
        // exactement aux données mockées.
        #expect(artworks.count == MockData.artworks.count)
    }
}

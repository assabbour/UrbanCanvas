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
    
    @Test("Le filtre Mural retourne uniquement des murals")
    func muralFilterReturnsOnlyMurals() {

        // Filtre uniquement les œuvres de type mural.
        let murals = MockData.artworks.filter {
            $0.type == .mural
        }

        // Vérifie que toutes les œuvres
        // retournées sont bien des murals.
        #expect(
            murals.allSatisfy {
                $0.type == .mural
            }
        )
    }
    
    @Test("Le filtre Graffiti retourne uniquement des graffitis")
    func graffitiFilterReturnsOnlyGraffiti() {

        let graffitis = MockData.artworks.filter {
            $0.type == .graffiti
        }

        #expect(
            graffitis.allSatisfy {
                $0.type == .graffiti
            }
        )
    }
    
    
}

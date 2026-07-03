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
    
    // Vérifie que le filtre Mural retourne uniquement
    // les œuvres de type Mural.
    @Test("Le filtre Mural retourne uniquement les œuvres Murales")
    func filterMuralArtworks() {
        
        // On récupère toutes les œuvres.
        let artworks = MockData.artworks
        
        // On applique le filtre Mural.
        let filteredArtworks = artworks.filter { artwork in
            artwork.type == .mural
        }
        
        // Vérifie que le résultat n'est pas vide.
        #expect(filteredArtworks.isEmpty == false)
        
        // Vérifie que toutes les œuvres sont bien de type Mural.
        #expect(
            filteredArtworks.allSatisfy { artwork in
                artwork.type == .mural
            }
        )
    }

    // Vérifie que le filtre Graffiti retourne uniquement
    // les œuvres de type Graffiti.
    @Test("Le filtre Graffiti retourne uniquement les œuvres Graffiti")
    func filterGraffitiArtworks() {

        // On récupère toutes les œuvres.
        let artworks = MockData.artworks

        // On applique le filtre Graffiti.
        let filteredArtworks = artworks.filter { artwork in
            artwork.type == .graffiti
        }

        // Vérifie que le résultat n'est pas vide.
        #expect(filteredArtworks.isEmpty == false)

        // Vérifie que toutes les œuvres sont bien de type Graffiti.
        #expect(
            filteredArtworks.allSatisfy { artwork in
                artwork.type == .graffiti
            }
        )
    }
    
    // Vérifie que le filtre Installation retourne uniquement
    // les œuvres de type Installation.
    @Test("Le filtre Installation retourne uniquement les œuvres Installation")
    func filterInstallationArtworks() {

        // On récupère toutes les œuvres.
        let artworks = MockData.artworks

        // On applique le filtre Installation.
        let filteredArtworks = artworks.filter { artwork in
            artwork.type == .installation
        }

        // Vérifie que le résultat n'est pas vide.
        #expect(filteredArtworks.isEmpty == false)

        // Vérifie que toutes les œuvres sont bien de type Installation.
        #expect(
            filteredArtworks.allSatisfy { artwork in
                artwork.type == .installation
            }
        )
    }
    
    
}




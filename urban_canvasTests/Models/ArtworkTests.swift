import Testing
@testable import urban_canvas

struct ArtworkTests {

    @Test("Toutes les œuvres possèdent un titre")
    func artworkShouldHaveTitle() {

        for artwork in MockData.artworks {
            #expect(!artwork.title.isEmpty)
        }
    }
    
  
    // Vérifie que chaque œuvre possède une description.
    @Test("Toutes les œuvres possèdent une description")
    func artworkShouldHaveDescription() {

        for artwork in MockData.artworks {

            #expect(!artwork.description.isEmpty)

        }
    }
    
    // Vérifie que chaque œuvre possède un nom d'image.
    @Test("Toutes les œuvres possèdent une image")
    func artworkShouldHaveImage() {

        for artwork in MockData.artworks {

            #expect(!artwork.imageName.isEmpty)

        }
    }
    
    
    // Vérifie que chaque œuvre possède un artiste avec un nom.
    @Test("Toutes les œuvres possèdent un artiste")
    func artworkShouldHaveArtist() {
        for artwork in MockData.artworks {
            #expect(!artwork.artist.name.isEmpty)
        }
        
        
    }
    
}

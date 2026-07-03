import Foundation
import Testing
@testable import urban_canvas

struct ArtistCardViewTests {
    
    // Vérifie que la carte artiste peut être créée.
    @Test("La carte artiste peut être créée")
    func artistCardCanBeCreated() {
        
        let view = ArtistCardView(
            artist: MockData.kan
        )
        
        #expect(view.artist.name == "KAN DMV")
    }
    
    // Vérifie que l'artiste possède une URL de site web.
    @Test("L'artiste possède un site web")
    func artistHasWebsiteURL() {

        let artist = MockData.kan

        #expect(artist.websiteURL.isEmpty == false)
    }
    
    // Vérifie que l'URL du site web est valide.
    @Test("L'URL du site web est valide")
    func artistWebsiteURLIsValid() {

        let artist = MockData.kan

        let url = URL(string: artist.websiteURL)

        #expect(url != nil)
    }
}

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
    
    // Vérifie que tous les artistes possèdent une image.
    @Test("Tous les artistes possèdent une image")
    func allArtistsHaveImage() {

        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]

        #expect(
            artists.allSatisfy { artist in
                !artist.imageName.isEmpty
            }
        )
    }
    
    // Vérifie que tous les artistes possèdent une URL valide.
    @Test("Tous les artistes possèdent une URL valide")
    func allArtistsHaveValidWebsiteURL() {

        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]

        #expect(
            artists.allSatisfy { artist in
                URL(string: artist.websiteURL) != nil
            }
        )
    }
    
    // Vérifie que toutes les URLs commencent par https.
    @Test("Toutes les URLs commencent par HTTPS")
    func allArtistWebsiteURLsUseHTTPS() {

        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]

        #expect(
            artists.allSatisfy { artist in
                artist.websiteURL.hasPrefix("https://")
            }
        )
    }
    
}

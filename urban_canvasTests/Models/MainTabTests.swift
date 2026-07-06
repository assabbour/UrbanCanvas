import Foundation
import Testing
@testable import urban_canvas

// Tests liés aux onglets principaux de l'application.
struct MainTabTests {

    // Vérifie que l'onglet œuvres existe.
    @Test("MainTab contient l'onglet œuvres")
    func mainTabContainsArtworks() {

        let tab = MainTab.artworks

        #expect(tab == .artworks)
    }
}

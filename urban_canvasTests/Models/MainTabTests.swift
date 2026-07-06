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

    // Vérifie que l'onglet mission existe.
    @Test("MainTab contient l'onglet mission")
    func mainTabContainsMission() {
        let tab = MainTab.mission
            #expect(tab == .mission)
        }
    
    // Vérifie que l'onglet auteurs existe.
    @Test("MainTab contient l'onglet auteurs")
    func mainTabContainsArtists() {
        let tab = MainTab.artists
        #expect(tab == .artists)
       }
}

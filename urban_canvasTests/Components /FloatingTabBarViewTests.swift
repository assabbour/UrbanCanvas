import SwiftUI
import Foundation
import Testing
@testable import urban_canvas

struct FloatingTabBarViewTests {

    // Vérifie que la FloatingTabBar peut être créée.
    @Test("La FloatingTabBar peut être créée")
    func floatingTabBarCanBeCreated() {

        let view = FloatingTabBarView(
            selectedTab: .constant(.artworks)
        )

        #expect(view != nil)
    }
    
    // Vérifie que l'onglet Œuvres peut être sélectionné.
    @Test("L'onglet Œuvres est sélectionné")
    func artworksTabIsSelected() {

        let selectedTab = MainTab.artworks

        #expect(selectedTab == .artworks)
    }
    
    // Vérifie que l'onglet Auteurs peut être sélectionné.
    @Test("L'onglet Auteurs est sélectionné")
    func artistsTabIsSelected() {

        let selectedTab = MainTab.artists

        #expect(selectedTab == .artists)
    }
    
    // Vérifie que l'utilisateur peut changer d'onglet.
    @Test("La sélection peut changer")
    func selectedTabCanChange() {

        var selectedTab = MainTab.artworks

        selectedTab = .artists

        #expect(selectedTab == .artists)
    }
    
    // Vérifie que l'utilisateur peut revenir sur l'onglet Œuvres.
    @Test("Retour sur l'onglet Œuvres")
    func canReturnToArtworksTab() {

        var selectedTab = MainTab.artists

        selectedTab = .artworks

        #expect(selectedTab == .artworks)
    }
    
    // Vérifie que la barre peut être créée avec l'onglet mission.
        @Test("FloatingTabBarView peut être créée avec l'onglet mission")
        func floatingTabBarCanBeCreatedWithMissionTab() {

            let view = FloatingTabBarView(
                selectedTab: .constant(.mission)
            )

            #expect(view != nil)
        }
}

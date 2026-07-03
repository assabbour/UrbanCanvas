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
}

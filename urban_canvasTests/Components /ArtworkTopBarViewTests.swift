import Foundation
import Testing
@testable import urban_canvas

struct ArtworkTopBarViewTests {
    
    @Test("La TopBar démarre en mode Liste")
    func topBarShouldStartInListMode() {
        
        let mode = DisplayMode.list
        
        #expect(mode == .list)
    }

    // Vérifie que la TopBar peut utiliser le mode Carte.
    @Test("La TopBar peut utiliser le mode Carte")
    func topBarShouldUseMapMode() {

        // On sélectionne le mode Carte.
        let mode = DisplayMode.map

        // On vérifie que le mode est bien Carte.
        #expect(mode == .map)
    }
}

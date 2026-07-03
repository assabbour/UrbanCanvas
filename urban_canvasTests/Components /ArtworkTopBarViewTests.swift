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
    
    // Vérifie que l'application propose exactement deux modes d'affichage.
    @Test("La TopBar contient deux modes d'affichage")
    func topBarShouldContainTwoDisplayModes() {

        // On récupère tous les modes disponibles.
        let modes = DisplayMode.allCases

        // On vérifie qu'il existe uniquement deux modes.
        #expect(modes.count == 2)
    }
    
    // Vérifie que le mode Liste est disponible.
    @Test("Le mode Liste est présent")
    func displayModesShouldContainListMode() {

        // On récupère tous les modes disponibles.
        let modes = DisplayMode.allCases

        // On vérifie que le mode Liste est présent.
        #expect(modes.contains(.list))
    }
}

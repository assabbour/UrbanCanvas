
import SwiftUI
import Testing
@testable import urban_canvas

struct DisplayModePickerViewTests {
    
    // Vérifie que le composant peut être créé avec le mode liste.
    @Test("Le composant Liste Carte peut être créé")
    func displayModePickerViewCanBeCreated() {
        
        let view = DisplayModePickerView(selectedMode: .constant(.list))
        
        #expect(view.selectedMode == .list)
    }
    
    // Vérifie que le composant accepte le mode Carte.
    @Test("Le composant peut être créé avec le mode Carte")
    func displayModePickerViewShouldSupportMapMode() {
        
        let view = DisplayModePickerView(selectedMode: .constant(.map))
        
        #expect(view.selectedMode == .map)
    }

    
    // Vérifie que le mode Liste est correctement utilisé.
    @Test("Le mode Liste est sélectionné")
    func displayModeShouldBeList() {

        let view = DisplayModePickerView(selectedMode: .constant(.list))

        #expect(view.selectedMode == DisplayMode.list)
    }
    
}

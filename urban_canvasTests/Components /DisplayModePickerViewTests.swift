
import SwiftUI
import Testing
@testable import urban_canvas

struct DisplayModePickerViewTests {
    
    @Test("Le composant Liste Carte peut être créé")
    func displayModePickerViewCanBeCreated() {
        
        // Vérifie que le composant peut être créé avec le mode liste.
        let view = DisplayModePickerView(selectedMode: .constant(.list))
        
        #expect(view.selectedMode == .list)
    }

    @Test("Le composant peut être créé avec le mode Carte")
    func displayModePickerViewShouldSupportMapMode() {

        // Vérifie que le composant accepte le mode Carte.
        let view = DisplayModePickerView(selectedMode: .constant(.map))

        #expect(view.selectedMode == .map)
    }
}

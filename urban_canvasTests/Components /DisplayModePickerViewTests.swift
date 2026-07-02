
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
}

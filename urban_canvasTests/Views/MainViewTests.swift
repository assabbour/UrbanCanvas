import Foundation
import Testing
@testable import urban_canvas

// Tests liés à la vue principale de l'application.
struct MainViewTests {

    // Vérifie que la vue principale peut être créée.
    @Test("MainView peut être créée")
    func mainViewCanBeCreated() {

        let view = MainView()

        #expect(view != nil)
    }
}

import Foundation
import Testing
@testable import urban_canvas

struct MissionViewTests {

    // Vérifie que l'écran Mission peut être créé.
    @Test("MissionView peut être créée")
    func missionViewCanBeCreated() {

        let view = MissionView()

        #expect(view != nil)
    }
}

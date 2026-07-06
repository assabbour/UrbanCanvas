import Foundation
import Testing
@testable import urban_canvas

struct MissionItemTests {

    // Vérifie qu'un élément de mission est créé non découvert par défaut.
    @Test("Un MissionItem démarre non découvert")
    func missionItemStartsNotDiscovered() {

        let item = MissionItem(
            artwork: MockData.artworks[0]
        )

        #expect(item.isDiscovered == false)
    }
}

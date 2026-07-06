import Foundation
import Testing
@testable import urban_canvas

struct MissionCardViewTests {

    // Vérifie que la carte de mission peut être créée.
    @Test("La carte Mission peut être créée")
    func missionCardCanBeCreated() {

        let item = MissionItem(
            artwork: MockData.artworks[0]
        )

        let view = MissionCardView(
            index: 1,
            item: item,
            onDiscover: {}
        )

        #expect(view.index == 1)
    }
    
}

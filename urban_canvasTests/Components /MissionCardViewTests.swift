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
    
    
    // Vérifie que l'action découvrir est bien appelée.
    @Test("La carte Mission déclenche l'action découvrir")
    func missionCardCallsDiscoverAction() {

        // Objet simple pour vérifier si l'action a été appelée.
        final class DiscoverSpy {
            var wasCalled = false

            func call() {
                wasCalled = true
            }
        }

        let spy = DiscoverSpy()

        let item = MissionItem(
            artwork: MockData.artworks[0]
        )

        let view = MissionCardView(
            index: 1,
            item: item,
            onDiscover: {
                spy.call()
            }
        )

        view.onDiscover()

        #expect(spy.wasCalled == true)
    }

}

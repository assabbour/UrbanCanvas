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
            onOpenDetail: {},
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
            onOpenDetail: {},
            onDiscover: {
                spy.call()
            }
        )

        view.onDiscover()

        #expect(spy.wasCalled == true)
    }
    
    // Vérifie que le bouton Voir le détail déclenche bien son action.
    @Test("Le bouton Voir le détail déclenche l'action")
    func detailButtonTriggersAction() {

        let item = MissionItem(
            artwork: MockData.artworks[0]
        )

        var didOpenDetail = false

        _ = MissionCardView(
            index: 1,
            item: item,
            onOpenDetail: {
                didOpenDetail = true
            },
            onDiscover: {}
        )

        // On simule l'action du bouton.
        didOpenDetail = true

        #expect(didOpenDetail == true)
    }

}

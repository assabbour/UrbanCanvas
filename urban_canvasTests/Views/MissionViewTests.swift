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
    
    // Vérifie qu'une mission est générée.
    @Test("Une mission est générée")
    func missionIsGenerated() {

        let mission = MissionGenerator.generateMission()

        #expect(mission.isEmpty == false)
    }
    
    // Vérifie que la mission contient au moins 3 œuvres.
    @Test("La mission contient au moins 3 œuvres")
    func missionContainsAtLeastThreeItems() {

        let mission = MissionGenerator.generateMission()

        #expect(mission.count >= 3)
    }
    
    // Vérifie que la mission contient maximum 5 œuvres.
    @Test("La mission contient maximum 5 œuvres")
    func missionContainsMaximumFiveItems() {

        let mission = MissionGenerator.generateMission()

        #expect(mission.count <= 5)
    }
}

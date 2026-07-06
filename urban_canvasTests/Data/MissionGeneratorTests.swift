import Foundation
import Testing
@testable import urban_canvas

struct MissionGeneratorTests {

    // Vérifie qu'une mission contient 5 œuvres.
    @Test("Une mission contient 5 œuvres")
    func missionContainsFiveArtworks() {

        let mission = MissionGenerator.generateMission()

        #expect(mission.count == 5)

    }

}

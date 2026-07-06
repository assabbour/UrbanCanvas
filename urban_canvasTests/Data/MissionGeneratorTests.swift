import Testing
@testable import urban_canvas

struct MissionGeneratorTests {

    // Vérifie qu'une mission contient 5 œuvres.
    @Test("une mission contient 5 oeuvres")
    func missionContainsFiveArtwork() {

        let mission = MissionGenerator.generateMission()

        #expect(mission.count == 5)
    }
}

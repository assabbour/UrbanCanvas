import Testing
@testable import urban_canvas

struct MissionGeneratorTests {

    // Vérifie qu'une mission contient 5 œuvres.
    @Test("une mission contient 5 oeuvres")
    func missionContainsFiveArtwork() {

        let mission = MissionGenerator.generateMission()

        #expect(mission.count == 5)
    }
    
    // Vérifie qu'une mission ne contient pas deux fois la même œuvre.
    @Test("La mission ne contient pas de doublons")
    func missionHasNoDuplicateArtworks() {

        let mission = MissionGenerator.generateMission()

        let artworkIds = mission.map { item in
            item.artwork.id
        }

        #expect(Set(artworkIds).count == artworkIds.count)
    }
}

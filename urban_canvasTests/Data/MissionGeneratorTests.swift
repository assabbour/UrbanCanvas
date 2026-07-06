import Testing
@testable import urban_canvas

struct MissionGeneratorTests {
    
    // Vérifie qu'une mission contient entre 3 et 5 œuvres.
    @Test("Une mission contient entre 3 et 5 œuvres")
    func missionContainsBetweenThreeAndFiveArtworks() {

        let mission = MissionGenerator.generateMission()

        #expect(mission.count >= 3)
        #expect(mission.count <= 5)
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

    // Vérifie que la mission évite de répéter deux fois le même artiste.
    @Test("La mission évite les artistes en double")
    func missionHasNoDuplicateArtists() {

        let mission = MissionGenerator.generateMission()

        let artistNames = mission.map { item in
            item.artwork.artist.name
        }

        #expect(Set(artistNames).count == artistNames.count)
    }
    
    // Vérifie que la mission contient au moins deux types d'art différents.
    @Test("La mission contient au moins deux types d'art")
    func missionContainsAtLeastTwoArtTypes() {

        let mission = MissionGenerator.generateMission()

        let types = Set(
            mission.map { item in
                item.artwork.type
            }
        )

        #expect(types.count >= 2)
    }
        
    // Vérifie qu'un artiste n'apparaît pas deux fois dans une mission.
    @Test("La mission ne répète pas les artistes")
    func missionDoesNotRepeatArtists() {

        let mission = MissionGenerator.generateMission()

        let artistNames = mission.map { item in
            item.artwork.artist.name
        }

        #expect(Set(artistNames).count == artistNames.count)
    }
    
    // Vérifie qu'une mission ne contient pas deux fois la même œuvre.
    @Test("La mission ne contient pas d'œuvre en double")
    func missionDoesNotContainDuplicateArtworks() {

        let mission = MissionGenerator.generateMission()

        let artworkIds = mission.map { item in
            item.artwork.id
        }

        #expect(Set(artworkIds).count == artworkIds.count)
    }
}

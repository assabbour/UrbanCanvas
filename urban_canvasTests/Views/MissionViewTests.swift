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

    // Vérifie que toutes les œuvres commencent non découvertes.
    @Test("Les œuvres commencent non découvertes")
    func missionItemsStartNotDiscovered() {

        let mission = MissionGenerator.generateMission()

        #expect(
            mission.allSatisfy { item in
                item.isDiscovered == false
            }
        )
    }
    
    // Vérifie que chaque élément de mission contient une œuvre valide.
    @Test("La mission contient des œuvres valides")
    func missionContainsValidArtworks() {

        let mission = MissionGenerator.generateMission()

        #expect(
            mission.allSatisfy { item in
                item.artwork.title.isEmpty == false &&
                item.artwork.imageName.isEmpty == false
            }
        )
    }
    
    
    @Test("La progression démarre à zéro")
    func missionProgressStartsAtZero() {

        let mission = MissionGenerator.generateMission()

        let discoveredCount = mission.filter { item in
            item.isDiscovered
        }.count

        #expect(discoveredCount == 0)
    }
    
    // Vérifie que la progression compte les œuvres découvertes.
    @Test("La progression compte les œuvres découvertes")
    func missionProgressCountsDiscoveredItems() {

        let mission = MissionGenerator.generateMission()

        let updatedMission = mission.enumerated().map { index, item in
            var updatedItem = item

            if index < 2 {
                updatedItem.isDiscovered = true
            }

            return updatedItem
        }

        let discoveredCount = updatedMission.filter { item in
            item.isDiscovered
        }.count

        #expect(discoveredCount == 2)
    }
    
    
}

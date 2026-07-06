import Foundation
import Foundation

// Génère automatiquement une mission.
struct MissionGenerator {

    // Génère une mission de 5 œuvres.
    static func generateMission() -> [MissionItem] {

        // Sélectionne les 5 premières œuvres.
        MockData.artworks.prefix(5).map { artwork in

            MissionItem(
                artwork: artwork
            )

        }

    }

}

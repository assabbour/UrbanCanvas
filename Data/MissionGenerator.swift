import Foundation

// Génère automatiquement une mission de découverte.
struct MissionGenerator {

    // Génère une mission entre 3 et 5 œuvres.
    static func generateMission() -> [MissionItem] {

        // Nombre d'œuvres souhaitées dans la mission.
        let missionSize = Int.random(in: 3...5)

        var selectedArtworks: [Artwork] = []
        var usedArtistNames: Set<String> = []

        // On mélange les œuvres pour obtenir une mission différente.
        let shuffledArtworks = MockData.artworks.shuffled()

        for artwork in shuffledArtworks {

            // Évite de répéter deux fois le même artiste.
            if usedArtistNames.contains(artwork.artist.name) {
                continue
            }

            selectedArtworks.append(artwork)
            usedArtistNames.insert(artwork.artist.name)

            // La mission s'arrête quand elle atteint la taille demandée.
            if selectedArtworks.count == missionSize {
                break
            }
        }

        // Sécurité : si la mission contient moins de 2 types d'art,
        // on essaie d'ajouter une œuvre d'un autre type.
        let selectedTypes = Set(selectedArtworks.map { $0.type })

        if selectedTypes.count < 2,
           let firstType = selectedTypes.first,
           let differentArtwork = MockData.artworks.first(where: { artwork in
               artwork.type != firstType &&
               usedArtistNames.contains(artwork.artist.name) == false
           }) {

            if selectedArtworks.count < 5 {
                selectedArtworks.append(differentArtwork)
            } else {
                selectedArtworks[selectedArtworks.count - 1] = differentArtwork
            }
        }

        return selectedArtworks.map { artwork in
            MissionItem(artwork: artwork)
        }
    }
}

import Foundation

// Génère automatiquement une mission de découverte.
struct MissionGenerator {

    // Génère une mission de 3 à 5 œuvres.
    static func generateMission() -> [MissionItem] {

        var selectedArtworks: [Artwork] = []
        var usedArtistNames: Set<String> = []

        // On mélange les œuvres pour avoir une mission différente.
        let shuffledArtworks = MockData.artworks.shuffled()

        for artwork in shuffledArtworks {

            // On évite de proposer deux fois le même artiste.
            if usedArtistNames.contains(artwork.artist.name) {
                continue
            }

            selectedArtworks.append(artwork)
            usedArtistNames.insert(artwork.artist.name)

            // On limite la mission à 5 œuvres maximum.
            if selectedArtworks.count == 5 {
                break
            }
        }

        return selectedArtworks.map { artwork in
            MissionItem(artwork: artwork)
        }
    }
}

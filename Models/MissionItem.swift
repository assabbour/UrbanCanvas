import Foundation

// Représente une œuvre proposée dans une mission.
// Chaque élément contient une œuvre et son état de découverte.
struct MissionItem: Identifiable {

    // Identifiant unique utilisé par SwiftUI.
    let id = UUID()

    // Œuvre associée à cette mission.
    let artwork: Artwork

    // Indique si l'œuvre a été marquée comme découverte.
    var isDiscovered: Bool = false
}

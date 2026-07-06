import Foundation

// Représente une œuvre proposée dans une mission.
struct MissionItem: Identifiable {

    // Identifiant unique utilisé par SwiftUI.
    let id = UUID()

    // Œuvre associée à cette mission.
    let artwork: Artwork

    // Indique si l'œuvre a été découverte.
    var isDiscovered: Bool = false
}

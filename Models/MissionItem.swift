import Foundation

// Représente une œuvre proposée dans une mission.
struct MissionItem: Identifiable {
    let id = UUID()
    // Œuvre associée à cette mission.
    let artwork: Artwork
    var isDiscovered: Bool = false
}

import Foundation

// Le type d'une œuvre de Street Art.
// On utilise une enum :  les types possibles sont limités.
enum ArtType: String, CaseIterable, Identifiable {
    case mural = "Mural"
    case graffiti = "Graffiti"
    case collage = "Collage"
    case installation = "Installation"

    // Identifiant utilisé par SwiftUI dans les listes.
    var id: String {
        rawValue
    }
}

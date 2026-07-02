import Foundation

// Représente le mode d'affichage choisi par l'utilisateur.
enum DisplayMode: String, CaseIterable, Identifiable {
    case list = "Liste"
    case map = "Carte"

    var id: String {
        rawValue
    }
}

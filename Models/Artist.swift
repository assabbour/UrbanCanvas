import Foundation

// Représente un artiste affiché dans l'application.
struct Artist: Identifiable {
    
    let id = UUID()
    let name: String
    let city: String
    let bio: String
    
    // Informations utilisées dans l'écran Profil / Auteurs.
    let age: String
    let origin: String
    let style: String
    let imageName: String
    let websiteURL: String
}

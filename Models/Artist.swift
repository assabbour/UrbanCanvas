import Foundation

// Un artiste ou une artiste.
struct Artist: Identifiable {
    let id: UUID
    let name: String
    let city: String
    let bio: String

    // L'id est généré automatiquement si on ne le fournit pas.
    init(
        id: UUID = UUID(),
        name: String,
        city: String,
        bio: String
    ) {
        self.id = id
        self.name = name
        self.city = city
        self.bio = bio
    }
}

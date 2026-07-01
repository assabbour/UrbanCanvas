import Foundation

// Représente une œuvre de Street Art.
struct Artwork: Identifiable {
    let id: UUID
    let title: String
    let artist: Artist
    let city: String
    let location: String
    let description: String
    let imageName: String
    let type: ArtType

    init(
        id: UUID = UUID(),
        title: String,
        artist: Artist,
        city: String,
        location: String,
        description: String,
        imageName: String,
        type: ArtType
    ) {
        self.id = id
        self.title = title
        self.artist = artist
        self.city = city
        self.location = location
        self.description = description
        self.imageName = imageName
        self.type = type
    }
}

import Foundation

// Représente une œuvre de street art affichée dans l'application.
struct Artwork: Identifiable {
    let id: UUID
    let title: String
    let artist: Artist
    let city: String
    let location: String
    let description: String
    let imageName: String
    let type: ArtType
    let condition: String
    let date: String
    let latitude: Double
    let longitude: Double

    init(
        id: UUID = UUID(),
        title: String,
        artist: Artist,
        city: String,
        location: String,
        description: String,
        imageName: String,
        type: ArtType,
        condition: String,
        date: String,
        latitude: Double,
        longitude: Double
    ) {
        self.id = id
        self.title = title
        self.artist = artist
        self.city = city
        self.location = location
        self.description = description
        self.imageName = imageName
        self.type = type
        self.condition = condition
        self.date = date
        self.latitude = latitude
        self.longitude = longitude
    }
}

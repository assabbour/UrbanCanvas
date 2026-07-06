import Foundation
import SwiftUI

// Carte affichant une œuvre proposée dans une mission.
struct MissionCardView: View {

    let index: Int
    let item: MissionItem

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            Text("Œuvre \(index)")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(.orange)

            Image(item.artwork.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 18))

            Text(item.artwork.title)
                .font(.headline)

            Text("\(item.artwork.type.rawValue) • \(item.artwork.artist.name)")
                .font(.caption)
                .foregroundStyle(.secondary)

            Text(item.artwork.location)
                .font(.caption)
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(radius: 5)
    }
}

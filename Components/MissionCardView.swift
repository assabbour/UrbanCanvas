
import SwiftUI

// Carte utilisée pour afficher une œuvre dans l'écran Mission.
struct MissionCardView: View {

    // Numéro de l'œuvre dans la mission.
    let index: Int

    // Élément de mission affiché dans la carte.
    let item: MissionItem

    // Action appelée pour ouvrir la fiche détail de l'œuvre.
    let onOpenDetail: () -> Void

    // Action appelée pour marquer l'œuvre comme découverte.
    let onDiscover: () -> Void

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

            // Bouton pour ouvrir la fiche détail complète.
            Button {
                onOpenDetail()
            } label: {
                Text("Voir le détail")
                    .font(.caption)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(Color.black.opacity(0.08))
                    .foregroundStyle(.black)
                    .clipShape(Capsule())
            }
            .buttonStyle(.plain)

            // Bouton pour marquer l'œuvre comme découverte.
            Button {
                onDiscover()
            } label: {
                Text(item.isDiscovered ? "Découverte ✓" : "Découvrir")
                    .font(.caption)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(item.isDiscovered ? Color.green : Color.orange)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
            }
            .buttonStyle(.plain)
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(radius: 5)
    }
}

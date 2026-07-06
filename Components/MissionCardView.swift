
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
/*import SwiftUI

// Carte utilisée pour afficher une œuvre dans l'écran Mission.
struct MissionCardView: View {

    // Numéro de l'œuvre dans la mission.
    let index: Int

    // Élément de mission affiché dans la carte.
    let item: MissionItem

    // Action appelée quand l'utilisateur clique sur le bouton Découvrir.
    let onDiscover: () -> Void

    var body: some View {

        // Conteneur vertical de toute la carte.
        VStack(alignment: .leading, spacing: 10) {

            // Affiche le numéro de l'œuvre dans la mission.
            Text("Œuvre \(index)")

                // Petit texte car c'est une information secondaire.
                .font(.caption)

                // Texte en gras pour bien identifier l'œuvre.
                .fontWeight(.bold)

                // Couleur orange pour rester cohérent avec le thème de l'application.
                .foregroundStyle(.orange)

            // Affiche l'image de l'œuvre.
            Image(item.artwork.imageName)

                // Permet à l'image de changer de taille.
                .resizable()

                // Remplit l'espace disponible sans déformer l'image.
                .scaledToFill()

                // Définit une hauteur fixe pour garder des cartes régulières.
                .frame(height: 150)

                // Coupe les parties de l'image qui dépassent.
                .clipped()

                // Arrondit les coins de l'image.
                .clipShape(RoundedRectangle(cornerRadius: 18))

            // Affiche le titre de l'œuvre.
            Text(item.artwork.title)

                // Style titre pour mettre le nom de l'œuvre en avant.
                .font(.headline)

            // Affiche le type de l'œuvre et le nom de l'artiste.
            Text("\(item.artwork.type.rawValue) • \(item.artwork.artist.name)")

                // Petit texte car c'est une information complémentaire.
                .font(.caption)

                // Couleur secondaire pour ne pas trop attirer l'attention.
                .foregroundStyle(.secondary)

            // Affiche la localisation de l'œuvre.
            Text(item.artwork.location)

                // Petit texte pour garder une carte compacte.
                .font(.caption)

            // Bouton pour marquer l'œuvre comme découverte.
            Button {

                // Quand on clique, on lance l'action envoyée par la vue parent.
                onDiscover()

            } label: {

                // Texte du bouton selon l'état de découverte.
                Text(item.isDiscovered ? "Découverte ✓" : "Découvrir")

                    // Petit texte adapté à un bouton dans une carte.
                    .font(.caption)

                    // Texte en gras pour rendre le bouton plus lisible.
                    .fontWeight(.bold)

                    // Le bouton prend toute la largeur disponible.
                    .frame(maxWidth: .infinity)

                    // Ajoute de l'espace vertical dans le bouton.
                    .padding(.vertical, 10)

                    // Fond vert si découvert, orange sinon.
                    .background(item.isDiscovered ? Color.green : Color.orange)

                    // Texte blanc pour bien ressortir sur le fond coloré.
                    .foregroundStyle(.white)

                    // Forme arrondie du bouton.
                    .clipShape(Capsule())
            }

            // Supprime le style par défaut du bouton SwiftUI.
            .buttonStyle(.plain)
        }

        // Ajoute de l'espace intérieur dans la carte.
        .padding()

        // Fond blanc pour la carte.
        .background(Color.white)

        // Coins arrondis de la carte.
        .clipShape(RoundedRectangle(cornerRadius: 24))

        // Ombre légère pour donner un effet de carte.
        .shadow(radius: 5)
    }
}
*/

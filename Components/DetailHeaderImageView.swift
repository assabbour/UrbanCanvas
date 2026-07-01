import Foundation
import SwiftUI

// Composant réutilisable pour afficher la grande image en haut du détail.
struct DetailHeaderImageView: View {

    // Nom de l'image stockée dans Assets.xcassets.
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()        // Permet de redimensionner l'image.
            .scaledToFill()     // Remplit toute la zone même si l'image est coupée.
            .frame(height: 260) // Hauteur fixe comme sur la maquette.
            .clipped()          // Coupe ce qui dépasse du cadre.
    }
}

#Preview {
    DetailHeaderImageView(imageName: MockData.artworks[0].imageName)
}

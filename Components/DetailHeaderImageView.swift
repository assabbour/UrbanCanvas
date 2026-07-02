import SwiftUI

// Composant réutilisable qui affiche la grande image
// en haut de l'écran de détail d'une œuvre.
struct DetailHeaderImageView: View {

    // Nom de l'image provenant des données.
    let imageName: String

    // Vérifie si l'image existe dans Assets.xcassets.
    // Si elle n'existe pas, on utilise l'image "placeholder".
    private var displayedImage: String {
        UIImage(named: imageName) != nil
            ? imageName
            : "placeholder"
    }

    var body: some View {
        
        Image(displayedImage)
            .resizable()          // Autorise le redimensionnement de l'image.
            .scaledToFill()       // Remplit toute la largeur disponible.
            .frame(height: 260)   // Hauteur fixe de l'image.
            .clipped()            // Coupe ce qui dépasse du cadre.
        
    }
}

#Preview {
    DetailHeaderImageView(imageName: MockData.artworks[0].imageName)
}

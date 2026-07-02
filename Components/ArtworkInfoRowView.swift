import Foundation
import SwiftUI

// Composant réutilisable pour afficher une information de détail.
// Exemple : Type : Mural
struct ArtworkInfoRowView: View {

    // Libellé de l'information.
    let title: String

    // Valeur affichée.
    let value: String

    var body: some View {
        HStack(alignment: .top, spacing: 2) {

            Text("\(title) :")
                .fontWeight(.bold)

            Text(value)

            Spacer()
        }
        .font(.subheadline)
    }
}

#Preview {
    ArtworkInfoRowView(title: "Type", value: "Mural")
}

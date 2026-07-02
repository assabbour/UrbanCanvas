import SwiftUI

// Bouton réutilisable pour ouvrir la fenêtre des filtres.
struct FilterButtonView: View {

    // Action exécutée quand l'utilisateur clique sur le bouton.
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: "line.3.horizontal.decrease.circle")
                .font(.title3)
                .foregroundStyle(.black)
                .padding(8)
                .background(Color.white)
                .clipShape(Circle())
                .shadow(radius: 2)
        }
    }
}

#Preview {
    FilterButtonView {
        print("Open filters")
    }
}

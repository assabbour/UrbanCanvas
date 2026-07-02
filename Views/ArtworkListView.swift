
import Foundation
import SwiftUI

// Écran qui affiche toutes les œuvres disponibles.
struct ArtworkListView: View {

    // Données statiques utilisées par l'écran.
    let artworks = MockData.artworks

    var body: some View {
        NavigationStack {
            List(artworks) { artwork in
                NavigationLink {
                    ArtworkDetailView(artwork: artwork)
                } label: {
                    ArtworkRowView(artwork: artwork)
                }
            }
            
            .navigationTitle("Liste des Street arts")
        }
    }
}

#Preview {
    ArtworkListView()
}

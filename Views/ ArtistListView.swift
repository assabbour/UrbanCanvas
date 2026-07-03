import Foundation
import SwiftUI

// Écran qui affiche la liste des artistes.
struct ArtistListView: View {

    // Données statiques des artistes.
    private let artists = [
        MockData.kan,
        MockData.c215,
        MockData.mto,
        MockData.invader,
        MockData.jace
    ]

    // Grille en deux colonnes.
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(artists) { artist in
                        ArtistCardView(artist: artist)
                    }
                }
                .padding()
                .padding(.bottom, 90)
            }
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    ArtistListView()
}

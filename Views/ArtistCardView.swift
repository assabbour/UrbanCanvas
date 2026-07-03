import Foundation
import SwiftUI

// Écran affichant tous les profils des artistes.
struct ArtistListView: View {

    // Liste des artistes disponibles.
    private let artists = [
        MockData.kan,
        MockData.c215,
        MockData.mto,
        MockData.invader,
        MockData.jace
    ]

    // Deux colonnes pour afficher les cartes.
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        NavigationStack {

            ScrollView {

                LazyVGrid(
                    columns: columns,
                    spacing: 20
                ) {

                    ForEach(artists) { artist in

                        ArtistCardView(
                            artist: artist
                        )

                    }

                }
                .padding()

            }
            .navigationTitle("Artists")

        }

    }

}

#Preview {
    ArtistListView()
}

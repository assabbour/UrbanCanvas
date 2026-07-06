import Foundation
import SwiftUI

// Écran principal de la mission de découverte.
// Cette vue affiche une mission générée automatiquement,
// la progression de l'utilisateur et les cartes des œuvres à découvrir.
struct MissionView: View {
    
    // Liste des œuvres de la mission.
    // Elle est générée automatiquement depuis les données mockées.
    // @State permet de modifier la liste quand une œuvre est marquée comme découverte.
    @State private var missionItems: [MissionItem] = MissionGenerator.generateMission()

    // Œuvre sélectionnée par l'utilisateur.
    // Quand cette variable reçoit une œuvre, SwiftUI ouvre la fiche détail.
    @State private var artworkToShowDetail: Artwork?

    // Calcule le nombre d'œuvres déjà découvertes.
    // On filtre les éléments de mission dont isDiscovered est à true.
    private var discoveredCount: Int {
        missionItems.filter { item in
            item.isDiscovered
        }.count
    }

    var body: some View {
        NavigationStack {

            // Conteneur principal vertical de l'écran Mission.
            VStack(alignment: .leading, spacing: 12) {

                // Titre principal de l'écran.
                Text("Mission")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                // Texte d'explication de la mission.
                Text("Découvrez plusieurs œuvres de Street Art sélectionnées automatiquement.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)

                // Affiche la progression de la mission.
                // Exemple : 2 œuvres découvertes sur 5.
                Text("\(discoveredCount) œuvres découvertes sur \(missionItems.count)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.orange)
                    .padding(.horizontal)

                // Bouton permettant de générer une nouvelle mission.
                Button {
                    // On remplace la mission actuelle par une nouvelle mission générée automatiquement.
                    missionItems = MissionGenerator.generateMission()
                } label: {
                    Text("Nouvelle mission")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Color.orange)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }
                .padding(.horizontal)

                // Message affiché quand toutes les œuvres sont découvertes.
                if discoveredCount == missionItems.count {
                    Text("Mission terminée ! Vous avez découvert \(missionItems.count) œuvres urbaines.")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.green)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.12))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding(.horizontal)
                }

                // Zone scrollable qui contient uniquement les cartes de mission.
                // Le haut de l'écran reste visible pendant que les cartes défilent.
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {

                        // On parcourt les œuvres de la mission avec leur position.
                        // index sert à afficher Œuvre 1, Œuvre 2, etc.
                        ForEach(Array(missionItems.enumerated()), id: \.element.id) { index, item in

                            // Carte d'une œuvre proposée dans la mission.
                            MissionCardView(
                                index: index + 1,
                                item: item,

                                // Action appelée quand l'utilisateur veut ouvrir la fiche détail.
                                onOpenDetail: {
                                    artworkToShowDetail = item.artwork
                                },

                                // Action appelée quand l'utilisateur marque l'œuvre comme découverte.
                                onDiscover: {
                                    missionItems[index].isDiscovered = true
                                }
                            )
                        }
                    }
                    .padding(.horizontal)

                    // Espace en bas pour éviter que la dernière carte soit cachée par la barre d'onglets.
                    .padding(.bottom, 220)
                }
            }
            .padding(.top)

            // Fond gris clair pour garder une séparation avec les cartes blanches.
            .background(Color(.systemGroupedBackground))

            // Ouvre la fiche détail quand artworkToShowDetail reçoit une œuvre.
            .navigationDestination(item: $artworkToShowDetail) { artwork in
                ArtworkDetailView(artwork: artwork)
            }
        }
    }
}

#Preview {
    MissionView()
}

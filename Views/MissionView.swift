import Foundation
import SwiftUI

// Écran principal de la mission de découverte.
struct MissionView: View {
    
    // Mission générée automatiquement depuis les données mockées.
    @State private var missionItems: [MissionItem] = MissionGenerator.generateMission()

    // Nombre d'œuvres découvertes dans la mission.
    private var discoveredCount: Int {
        missionItems.filter { item in
            item.isDiscovered
        }.count
    }

    var body: some View {
        NavigationStack {

            VStack(alignment: .leading, spacing: 12) {

                // Titre de l'écran Mission.
                Text("Mission")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                // Texte d'explication.
                Text("Découvrez plusieurs œuvres de Street Art sélectionnées automatiquement.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)

                // Progression de la mission.
                // Cette partie reste visible en haut car elle est hors du ScrollView.
                Text("\(discoveredCount) œuvres découvertes sur \(missionItems.count)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.orange)
                    .padding(.horizontal)
                // Bouton permettant de générer une nouvelle mission.
                Button {

                    // Génère une nouvelle mission.
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
                // Message affiché seulement quand toute la mission est terminée.
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

                // Seules les cartes sont dans le ScrollView.
                ScrollView {

                    VStack(alignment: .leading, spacing: 20) {

                        ForEach(Array(missionItems.enumerated()), id: \.element.id) { index, item in

                            MissionCardView(
                                index: index + 1,
                                item: item,
                                onDiscover: {
                                    missionItems[index].isDiscovered = true
                                }
                            )
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 90)
                }
            }
            .padding(.top)
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    MissionView()
}

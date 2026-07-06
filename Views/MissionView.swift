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
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {

                    Text("Mission")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Découvrez plusieurs œuvres de Street Art sélectionnées automatiquement.")
                        .font(.body)
                        .foregroundStyle(.secondary)

                    // Progression de la mission.
                    Text("\(discoveredCount) œuvres découvertes sur \(missionItems.count)")
                        .font(.headline)
                        .foregroundStyle(.orange)
                    // Si toutes les œuvres sont découvertes,
                    // on affiche un message de réussite.
                    if discoveredCount == missionItems.count {

                        VStack(spacing: 10) {

                            Text("Mission terminée !")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundStyle(.green)

                            Text("Vous avez découvert \(missionItems.count) œuvres urbaines.")
                                .font(.body)
                                .foregroundStyle(.secondary)

                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.12))
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                    }

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
                .padding()
                .padding(.bottom, 90)
            }
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    MissionView()
}

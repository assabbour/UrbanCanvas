/*import Foundation
import SwiftUI

// Écran principal de la mission de découverte.
struct MissionView: View {
    
    // Mission générée automatiquement depuis les données mockées.
    // @State permet de modifier la liste quand une œuvre est découverte.
    @State private var missionItems: [MissionItem] = MissionGenerator.generateMission()

    var body: some View {

        // NavigationStack permet d'avoir une navigation propre sur cet écran.
        NavigationStack {

            // ScrollView permet de faire défiler la page si les cartes dépassent l'écran.
            ScrollView {

                // Conteneur vertical pour organiser le titre, le texte et les cartes.
                VStack(alignment: .leading, spacing: 20) {

                    // Titre principal de l'écran Mission.
                    Text("Mission")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    // Petit texte explicatif pour l'utilisateur.
                    Text("Découvrez plusieurs œuvres de Street Art sélectionnées automatiquement.")
                        .font(.body)
                        .foregroundStyle(.secondary)

                    // On parcourt les éléments de la mission.
                    // enumerated() permet d'avoir l'index et l'élément.
                    ForEach(Array(missionItems.enumerated()), id: \.element.id) { index, item in

                        // Carte qui affiche une œuvre de la mission.
                        MissionCardView(
                            index: index + 1,
                            item: item,
                            onDiscover: {

                                // Quand l'utilisateur clique sur Découvrir,
                                // on marque cette œuvre comme découverte.
                                missionItems[index].isDiscovered = true
                            }
                        )
                    }
                }

                // Ajoute de l'espace autour du contenu.
                .padding()

                // Ajoute de l'espace en bas pour éviter que la barre flottante cache le contenu.
                .padding(.bottom, 90)
            }

            // Fond gris clair pour l'écran Mission.
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    MissionView()
}
*/



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

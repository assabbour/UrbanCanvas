import Foundation
import SwiftUI

// Écran principal de la mission de découverte.
struct MissionView: View {

    // Mission générée automatiquement depuis les données mockées.
    @State private var missionItems: [MissionItem] = MissionGenerator.generateMission()

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

                    ForEach(Array(missionItems.enumerated()), id: \.element.id) { index, item in
                        MissionCardView(
                            index: index + 1,
                            item: item
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

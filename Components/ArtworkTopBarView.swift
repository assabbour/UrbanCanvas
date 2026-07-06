import Foundation
import SwiftUI

// Barre du haut réutilisable.
// Elle contient le bouton Liste/Carte et le bouton filtre.
struct ArtworkTopBarView: View {

    // Mode affiché actuellement : liste ou carte.
    @Binding var selectedMode: DisplayMode

    // Action appelée quand on clique sur le bouton filtre.
    let onFilterTap: () -> Void

    var body: some View {
        HStack {
            DisplayModePickerView(selectedMode: $selectedMode)
                .frame(width: 270)

            Spacer()

            FilterButtonView {
                onFilterTap()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ArtworkTopBarView(
        selectedMode: .constant(.list),
        onFilterTap: {}
    )
}

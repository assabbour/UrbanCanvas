import SwiftUI

// Composant réutilisable pour choisir entre Liste et Carte.
struct DisplayModePickerView: View {

    // Mode sélectionné depuis l'écran principal.
    @Binding var selectedMode: DisplayMode

    var body: some View {
        Picker("Mode d'affichage", selection: $selectedMode) {
            ForEach(DisplayMode.allCases) { mode in
                Text(mode.rawValue)
                    .tag(mode)
            }
        }
        .pickerStyle(.segmented)
    }
}

#Preview {
    DisplayModePickerView(selectedMode: .constant(.list))
}

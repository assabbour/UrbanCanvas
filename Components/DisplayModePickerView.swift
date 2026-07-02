import SwiftUI

// Composant réutilisable pour choisir entre Liste et Carte.
struct DisplayModePickerView: View {

    // Mode sélectionné depuis l'écran principal.
    @Binding var selectedMode: DisplayMode

    var body: some View {
        HStack(spacing: 0) {

            Button {
                selectedMode = .list
            } label: {
                Text("Liste")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
                    .background(selectedMode == .list ? Color.orange : Color.clear)
                    .foregroundStyle(.black)
                    .clipShape(Capsule())
            }

            Button {
                selectedMode = .map
            } label: {
                Text("Carte")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
                    .background(selectedMode == .map ? Color.orange : Color.clear)
                    .foregroundStyle(.black)
                    .clipShape(Capsule())
            }
        }
        .padding(3)
        .background(Color.white)
        .clipShape(Capsule())
    }
}

#Preview {
    DisplayModePickerView(selectedMode: .constant(.list))
}

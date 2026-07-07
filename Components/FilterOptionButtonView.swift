import SwiftUI

// Bouton réutilisable pour une option de filtre (Tous, Mural, Graffiti...)
struct FilterOptionButtonView: View {

    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.subheadline)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 9)
                .background(Color(.systemGray6))
                .foregroundStyle(isSelected ? .orange : .black)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    FilterOptionButtonView(title: "Tous", isSelected: true) {}
}

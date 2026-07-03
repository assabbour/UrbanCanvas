import SwiftUI

struct FloatingTabBarView: View {

    @Binding var selectedTab: MainTab

    var body: some View {
        HStack(spacing: 8) {
            tabButton(title: "Œuvres", icon: "photo.on.rectangle", tab: .artworks)
            tabButton(title: "Auteurs", icon: "person.circle", tab: .artists)
        }
        .padding(6)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        .shadow(radius: 8)
    }

    private func tabButton(title: String, icon: String, tab: MainTab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(spacing: 3) {
                Image(systemName: icon)
                    .font(.system(size: 18))

                Text(title)
                    .font(.caption2)
                    .fontWeight(.semibold)
            }
            .foregroundStyle(selectedTab == tab ? .orange : .black)
            .frame(width: 82, height: 52)
            .background(
                selectedTab == tab
                ? Color.orange.opacity(0.15)
                : Color.clear
            )
            .clipShape(Capsule())
        }
        .buttonStyle(.plain)
    }
}

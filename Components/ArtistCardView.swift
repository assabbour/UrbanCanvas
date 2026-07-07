import SwiftUI

struct ArtistCardView: View {

    let artist: Artist

    // Ouvrir une URL avec Safari.
    @Environment(\.openURL) private var openURL

    var body: some View {
        VStack(spacing: 12) {

            Image(artist.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 74, height: 74)
                .clipShape(Circle())
                .padding(.top, 20)

            Text(artist.name)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.orange)
                .multilineTextAlignment(.center)

            VStack(spacing: 2) {
                Text("Age : \(artist.age)")
                Text("Origines : \(artist.origin)")
                Text("Style : \(artist.style)")
            }
            .font(.caption)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)

            Spacer()

            Button {
                // Ouvre le site web de l'artiste dans Safari.
                if let url = URL(string: artist.websiteURL) {
                    openURL(url)
                }
            } label: {
                Text("Site web")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 9)
                    .background(Color.orange)
                    .clipShape(Capsule())
            }
            .buttonStyle(.plain)
            .padding(.horizontal, 14)
            .padding(.bottom, 14)
        }
        .frame(height: 240)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}

import SwiftUI

struct ArtistCardView: View {

    let artist: Artist

    var body: some View {
        VStack(spacing: 12) {

            Image(artist.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 72, height: 72)
                .clipShape(Circle())
                .padding(.top, 20)

            Text(artist.name)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.orange)

            VStack(spacing: 2) {
                Text("Age : \(artist.age)")
                Text("Origines : \(artist.origin)")
                Text("Style : \(artist.style)")
            }
            .font(.caption)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)

            Spacer()

            Link(
                "Site web",
                destination: URL(string: artist.websiteURL)!
            )
            .font(.caption)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 9)
            .background(Color.orange)
            .clipShape(Capsule())
            .padding(.horizontal, 14)
            .padding(.bottom, 14)
        }
        .frame(height: 240)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}

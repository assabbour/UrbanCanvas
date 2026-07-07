import Foundation
import SwiftUI

// Marqueur réutilisable affiché sur la carte (Un point orange de la maquette.)
struct ArtworkMapMarkerView: View {

    var body: some View {
        Image(systemName: "mappin.circle.fill")
            .font(.system(size: 34))
            .foregroundStyle(.orange)
            .background(.white)
            .clipShape(Circle())
    }
}

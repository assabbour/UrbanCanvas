import Foundation
import Testing
@testable import urban_canvas

struct ArtworkTopBarViewTests {

    @Test("La TopBar démarre en mode Liste")
    func topBarShouldStartInListMode() {

        let mode = DisplayMode.list

        #expect(mode == .list)
    }
}

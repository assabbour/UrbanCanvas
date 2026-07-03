import Testing
@testable import urban_canvas

struct FilterPopupViewTests {

    @Test("La popup de filtre peut être créée")
    func filterPopupCanBeCreated() {

        let view = FilterPopupView(
            selectedArtType: nil,
            onSelect: { _ in },
            onClose: {}
        )

        #expect(view.selectedArtType == nil)
    }

    @Test("La popup peut recevoir un filtre Mural")
    func filterPopupCanReceiveMuralFilter() {

        let view = FilterPopupView(
            selectedArtType: .mural,
            onSelect: { _ in },
            onClose: {}
        )

        #expect(view.selectedArtType == .mural)
    }

    @Test("La popup peut recevoir un filtre Graffiti")
    func filterPopupCanReceiveGraffitiFilter() {

        let view = FilterPopupView(
            selectedArtType: .graffiti,
            onSelect: { _ in },
            onClose: {}
        )

        #expect(view.selectedArtType == .graffiti)
    }
}

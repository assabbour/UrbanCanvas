import Testing
@testable import urban_canvas

struct FilterPopupViewTests {

    @Test("La popup de filtre peut être créée")
    func filterPopupCanBeCreated() {

        let view = FilterPopupView {}

        #expect(view.onClose != nil)
    }
    
    
    @Test("La popup possède une action de fermeture")
    func filterPopupHasCloseAction() {

        let view = FilterPopupView {}

        #expect(view.onClose != nil)
    }
}

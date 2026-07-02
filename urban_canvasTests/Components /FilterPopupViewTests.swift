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
    
    @Test("La popup peut être créée plusieurs fois")
    func filterPopupCanBeCreatedMultipleTimes() {

        let popup1 = FilterPopupView {}
        let popup2 = FilterPopupView {}

        #expect(popup1.onClose != nil)
        #expect(popup2.onClose != nil)
    }
}

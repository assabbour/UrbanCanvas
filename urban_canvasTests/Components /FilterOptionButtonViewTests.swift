import Testing
@testable import urban_canvas

struct FilterOptionButtonViewTests {

    @Test("Le bouton de filtre peut être créé")
    func filterOptionButtonCanBeCreated() {
        let view = FilterOptionButtonView(
            title: "Mural",
            isSelected: false
        ) {}

        #expect(view.title == "Mural")
        #expect(view.isSelected == false)
    }
    
    @Test("Le bouton sélectionné peut être créé")
    func selectedFilterOptionButtonCanBeCreated() {

        let view = FilterOptionButtonView(
            title: "Tous",
            isSelected: true
        ) {}

        #expect(view.title == "Tous")
        #expect(view.isSelected)
    }
}

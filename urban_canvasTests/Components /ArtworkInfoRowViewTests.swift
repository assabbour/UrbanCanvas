import Testing
@testable import urban_canvas

struct ArtworkInfoRowViewTests {

    
    // Vérifie que le composant peut être créé avec un titre et une valeur.
    @Test("Le composant d'information peut être créé")
    func artworkInfoRowViewCanBeCreated() {

        let view = ArtworkInfoRowView(
            title: "Type",
            value: "Mural"
        )

        #expect(view.title == "Type")
        #expect(view.value == "Mural")
    }
}

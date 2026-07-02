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
    
    
    // Vérifie que le titre est correctement transmis au composant.
    @Test("Le composant reçoit le bon titre")
    func artworkInfoRowViewShouldReceiveTitle() {

        let view = ArtworkInfoRowView(
            title: "Auteur",
            value: "C215"
        )

        #expect(view.title == "Auteur")
    }
    
    
    // Vérifie que la valeur est correctement transmise.
    @Test("Le composant reçoit la bonne valeur")
    func artworkInfoRowViewShouldReceiveValue() {

        let view = ArtworkInfoRowView(
            title: "Ville",
            value: "Paris"
        )

        #expect(view.value == "Paris")
    }
}

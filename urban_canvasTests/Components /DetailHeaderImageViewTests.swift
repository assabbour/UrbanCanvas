import Testing
@testable import urban_canvas

struct DetailHeaderImageViewTests {

    // Vérifie que le composant peut être créé avec un nom d'image.
    @Test("Le composant image détail peut être créé")
    func detailHeaderImageViewCanBeCreated() {
        let view = DetailHeaderImageView(imageName: "liberte_egalite")

        #expect(view.imageName == "liberte_egalite")
    }
}

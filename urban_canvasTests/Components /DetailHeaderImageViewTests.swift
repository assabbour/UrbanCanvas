import Testing
@testable import urban_canvas

struct DetailHeaderImageViewTests {

    // Vérifie que le composant peut être créé avec un nom d'image.
    @Test("Le composant image détail peut être créé")
    func detailHeaderImageViewCanBeCreated() {
        let view = DetailHeaderImageView(imageName: "liberte_egalite")

        #expect(view.imageName == "liberte_egalite")
    }
    
    
    // Vérifie que le nom d'image est bien transmis au composant.
    @Test("Le composant image détail reçoit le bon nom d'image")
    func detailHeaderImageViewShouldReceiveImageName() {

        let view = DetailHeaderImageView(imageName: "joconde_marseille")

        #expect(view.imageName == "joconde_marseille")
    }
}

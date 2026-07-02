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
    
    
    // Vérifie que le composant reçoit un nom d'image non vide.
    @Test("Le nom d'image ne doit pas être vide")
    func detailHeaderImageNameShouldNotBeEmpty() {

        let view = DetailHeaderImageView(imageName: "placeholder")

        #expect(!view.imageName.isEmpty)
    }
    
    
    // Vérifie que le composant peut recevoir l'image par défaut.
    @Test("Le composant accepte l'image placeholder")
    func detailHeaderImageViewShouldAcceptPlaceholder() {

        let view = DetailHeaderImageView(imageName: "placeholder")

        #expect(view.imageName == "placeholder")
    }
    
    // Vérifie que le composant peut recevoir une image depuis MockData.
    @Test("Le composant accepte l'image d'une œuvre")
    func detailHeaderImageViewShouldAcceptArtworkImage() {

        let artwork = MockData.artworks[0]
        let view = DetailHeaderImageView(imageName: artwork.imageName)

        #expect(view.imageName == artwork.imageName)
    }
}

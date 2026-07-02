import Testing
@testable import urban_canvas

struct ArtTypeTests {

    // Vérifie que les types d'œuvres utilisés par l'application existent.
    @Test("Les types d'œuvres disponibles ne doivent pas être vides")
    func artTypesShouldNotBeEmpty() {

        #expect(!ArtType.allCases.isEmpty)
    }
    
    
    // Vérifie que les types d'œuvres ont les bonnes valeurs affichées.
    @Test("Les types d'œuvres possèdent les bonnes valeurs")
    func artTypesShouldHaveExpectedValues() {

        #expect(ArtType.mural.rawValue == "Mural")
        #expect(ArtType.graffiti.rawValue == "Graffiti")
        #expect(ArtType.collage.rawValue == "Collage")
        #expect(ArtType.installation.rawValue == "Installation")
    }
    
}

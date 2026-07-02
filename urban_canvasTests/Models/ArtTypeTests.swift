import Testing
@testable import urban_canvas

struct ArtTypeTests {

    // Vérifie que les types d'œuvres utilisés par l'application existent.
    @Test("Les types d'œuvres disponibles ne doivent pas être vides")
    func artTypesShouldNotBeEmpty() {

        #expect(!ArtType.allCases.isEmpty)
    }
}

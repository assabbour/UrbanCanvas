import Testing
@testable import urban_canvas

struct ArtTypeFilterTests {

    @Test("Les types d'art disponibles sont corrects")
    func artTypesShouldContainExpectedValues() {
        #expect(ArtType.allCases.contains(.mural))
        #expect(ArtType.allCases.contains(.graffiti))
        #expect(ArtType.allCases.contains(.collage))
        #expect(ArtType.allCases.contains(.installation))
    }
}

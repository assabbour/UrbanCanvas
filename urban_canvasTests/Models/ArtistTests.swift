import Testing
@testable import urban_canvas

struct ArtistTests {
    
    // Vérifie que chaque artiste possède un nom.
    @Test("Tous les artistes possèdent un nom")
    func artistsShouldHaveName() {
        
        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]
        
        for artist in artists {
            #expect(!artist.name.isEmpty)
        }
    }
    
    // Vérifie que chaque artiste possède une ville.
    @Test("Tous les artistes possèdent une ville")
    func artistsShouldHaveCity() {
        
        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]
        
        for artist in artists {
            #expect(!artist.city.isEmpty)
        }
    }
    
    // Vérifie que chaque artiste possède une biographie.
    @Test("Tous les artistes possèdent une biographie")
    func artistsShouldHaveBiography() {
        
        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]
        
        for artist in artists {
            #expect(!artist.bio.isEmpty)
        }
    }

    // Vérifie que deux artistes ne portent pas le même nom.
    @Test("Les artistes possèdent des noms uniques")
    func artistsShouldHaveUniqueNames() {

        let artists = [
            MockData.kan,
            MockData.c215,
            MockData.mto,
            MockData.invader,
            MockData.jace
        ]

        let names = artists.map(\.name)

        #expect(Set(names).count == names.count)
    }
    
}

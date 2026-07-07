import Foundation

// Contient toutes les données statiques de l'application.
// Les œuvres et les artistes sont codés en dur conformément aux consignes.
struct MockData {

    // MARK: - Artists

    // MARK: - Artists

    static let kan = Artist(
        name: "KAN DMV",
        city: "Marseille",
        bio: "French street artist known for large murals inspired by pop culture.",
        age: "49",
        origin: "France",
        style: "Pointillisme",
        imageName: "kan",
        websiteURL: "https://www.c215.fr"
    )

    static let c215 = Artist(
        name: "C215",
        city: "Paris",
        bio: "French stencil artist internationally recognized for his urban portraits.",
        age: "52",
        origin: "France",
        style: "Stencil",
        imageName: "c215",
        websiteURL: "https://kandmv.com"
    )

    static let mto = Artist(
        name: "MTO",
        city: "Marseille",
        bio: "Street artist famous for realistic large-scale murals.",
        age: "46",
        origin: "France",
        style: "Mural",
        imageName: "mto",
        websiteURL: "https://www.space-invaders.com/home/"
    )

    static let invader = Artist(
        name: "Invader",
        city: "Paris",
        bio: "French artist famous for his mosaic artworks inspired by retro video games.",
        age: "56",
        origin: "France",
        style: "Mosaïque",
        imageName: "invader",
        websiteURL: "https://www.space-invaders.com"
    )

    static let jace = Artist(
        name: "JACE",
        city: "Le Havre",
        bio: "Creator of the famous Gouzous characters found on walls around the world.",
        age: "52",
        origin: "France",
        style: "Graffiti",
        imageName: "jace",
        websiteURL: "https://www.c215.fr"
    )

    // MARK: - Artworks

    static let artworks: [Artwork] = [

        Artwork(
            title: "Liberté Égalité Fraternité",
            artist: c215,
            city: "Paris",
            location: "13th arrondissement",
            description: "braelebrating the values oReprtwork Stencil artwork celebrating the valuesrtwork celebrating the values o of the Stencil  French rtwork celebrating the values oReprtwork Stencil artwork celebrating the valuesrtwork celebrating the values o of the Stencil artwork celebrating the valuesrtwork celebrating the values o of the French rtwork celebrating the values oReprtwork celebrating the values oublic.",
            imageName: "liberte_egalite",
            type: .graffiti,
            condition: "Excellent",
            date: "2021",
            latitude: 48.8275,
            longitude: 2.3564
        ),

        Artwork(
            title: "La Joconde de Marseille",
            artist: kan,
            city: "Marseille",
            location: "Palais de la Bourse",
            description: "A contemporaryted into the urban landscape.A contemporary reinterpretation of the Mona Lisa integrated into the urban landscapeA contemporary reinterpretation of the Mona Lisa integrated into the urban landscape",
            imageName: "joconde_marseille",
            type: .mural,
            condition: "Excellent",
            date: "2022",
            latitude: 43.2965,
            longitude: 5.3756
        ),

        Artwork(
            title: "La Maison de Cécile",
            artist: jace,
            city: "Paris",
            location: "Rue Nationale",
            description: "Colorful mural blending architecture and street armural blending architecture and street armelebrating the valuelebrating the values oublic.ural blending architecture and street armural blending architecture and street armural blending architecture and street art.",
            imageName: "maison_cecile",
            type: .mural,
            condition: "Very Good",
            date: "2020",
            latitude: 48.8271,
            longitude: 2.3662
        ),

        Artwork(
            title: "Chloé",
            artist: c215,
            city: "Marseille",
            location: "Cours Julien",
            description: "A detailed stencil portrait placed inportrait placed in the values o of the Stencil artwork celebrating the valuesrtwork celebrating the values o of the French rtwork celebrating the values oReprtwork celebrating the values oublic.ost artistic neighborhoods.",
            imageName: "chloe",
            type: .graffiti,
            condition: "Good",
            date: "2019",
            latitude: 43.2938,
            longitude: 5.3812
        ),

        Artwork(
            title: "PA_278",
            artist: invader,
            city: "Paris",
            location: "Le Marais",
            description: "Pixel-art inspired mosaic install-art inspiredtwork celebrating the values o of the French rtwork celebrating the values oReprtwork celebrating the values oublic.mosaic install-art inspired mosaic installed on a Parisian street corner.",
            imageName: "pa_278",
            type: .installation,
            condition: "Excellent",
            date: "2018",
            latitude: 48.8579,
            longitude: 2.3601
        ),

        Artwork(
            title: "Chuuuut...",
            artist: c215,
            city: "Paris",
            location: "Montmartre",
            description: "Expressive stencil artwork invitielebrating the values oReprtwork Stencil artwork celebrating the valuesrtwork celebrating the vcelebrating the values oReprtwork celebrating the values oublic.ng passers-by to stop and observe.",
            imageName: "chuuuut",
            type: .graffiti,
            condition: "Good",
            date: "2017",
            latitude: 48.8867,
            longitude: 2.3431
        ),

        Artwork(
            title: "Le Tigre et la Cigale",
            artist: mto,
            city: "Marseille",
            location: "La Friche Belle de Mai",
            description: "Large mural representing the contrast betweh rtwork celebrating the values oReprtwork celebrating the values oublic. strength and fragility.",
            imageName: "tigre_cigale",
            type: .mural,
            condition: "Very Good",
            date: "2023",
            latitude: 43.3114,
            longitude: 5.3856
        )
    ]
}

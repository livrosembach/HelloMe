import Foundation

class DataSource {
    func getData() -> [BookModel] {
        return Self.data
    }
    
    // Local onde se encontram os dados que são apresentados no aplicativo. Cada CardModel corresponde a um Card na tela inicial do app.
    private static let data = [
        BookModel(imageName: "addielarue",imageWidth: 70, imageDetail: "addielarueDetail"),
        BookModel(imageName: "infancia",imageWidth: 40, imageDetail: "infanciaDetail"),
        BookModel(imageName: "nadoartistico",imageWidth: 60, imageDetail: "nadoartisticoDetail"),
        BookModel(imageName: "princesadasaguas",imageWidth: 40, imageDetail: "princesadasaguasDetail"),
        BookModel(imageName: "amigos",imageWidth: 60, imageDetail: "amigosDetail"),
        BookModel(imageName: "princesamecanica",imageWidth: 60, imageDetail: "princesamecanicaDetail")
    ]
}


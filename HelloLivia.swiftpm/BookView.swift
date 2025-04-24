import SwiftUI

struct BookView: View {
    let model: BookModel 
    
    var body: some View {
        // Coloca uma imagem no corpo do card. O nome da imagem vem de model.imageName
        Image(model.imageName)
            .resizable() // Faz com que a imagem possa ser redimensionada
            .frame(height: 201)
            .frame(width: model.imageWidth)
            // Coloca uma altura máxima de 220 pixels no card
    }
}

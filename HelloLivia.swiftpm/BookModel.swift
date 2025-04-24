import Foundation

// Esse é um modelo de dados, que é usado para popular os cards do app. Ou seja, as telas do app tem imagens que são acessadas por seus nomes, títulos e textos. O id é usado para garantir que os modelos são únicos.
struct BookModel: Identifiable {
    let imageName: String
    let imageWidth: CGFloat
    let imageDetail: String
    
    var id = UUID()
}

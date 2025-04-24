import SwiftUI

struct DetailsView: View {
    let model: BookModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image(model.imageDetail)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.white.opacity(0.1))
                        .padding()
                }
                Spacer()
            }
            .padding()
            .frame(maxHeight: .infinity, alignment: .center) 
        }
        .navigationBarBackButtonHidden(true)
    }
}

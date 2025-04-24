import SwiftUI

struct ContentView: View {
    let dataSrc: DataSource
    
    var body: some View {
        NavigationStack {
            HStack(){
                NavigationLink(destination: Shelve(dataSrc: dataSrc)) {
                    Image("helloMe")
                        .resizable()
                        .scaledToFill()
                }
            }
            }
        }
    }

struct Shelve: View {
    let dataSrc: DataSource
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        NavigationStack {
            ZStack {
                Image("Shelve")
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
                
                    VStack {
                        HStack(spacing: 16) {
                            ForEach(dataSrc.getData()) { model in
                                NavigationLink(destination: DetailsView(model: model)) {
                                    BookView(model: model)
                                }
                            }
                        }
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }.navigationBarBackButtonHidden(true)
        
    }
}
    

